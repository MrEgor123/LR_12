program z_5;

var
  inputFile, outputFile: TextFile;
  num, min, max: Integer;

begin

  AssignFile(inputFile, 'input.txt');
  Reset(inputFile);

  min := MaxInt; // максимальное значение
  max := -MaxInt; // минимальное значение

  while not EOF(inputFile) do // пока не достигнут конец файла
  begin
    ReadLn(inputFile, num); // считываем числа из файла, eof - конец файла
    if num < min then 
      min := num;
    if num > max then
      max := num;
  end;

  CloseFile(inputFile);

  // Открываем файл для записи
  AssignFile(outputFile, 'output.txt');
  Rewrite(outputFile);

  // Записываем минимальное и максимальное число в файл
  WriteLn(outputFile, 'Минимальное число: ', min);
  WriteLn(outputFile, 'Максимальное число: ', max);

  // Закрываем файл после записи
  CloseFile(outputFile);
end.


