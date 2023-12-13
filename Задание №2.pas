program z_2;

var
  N, K, i, j: Integer;
  OutputFile: TextFile;

begin
  // Вводим значения N и K
  Write('Введите количество строк N: ');
  Readln(N);

  Write('Введите количество символов в каждой строке K: ');
  Readln(K);

  // Проверяем корректность введенных значений
  if (N <= 0) or (K <= 0) then
  begin
    Writeln('Пожалуйста, введите положительные значения для N и K.');
    Halt;
  end;

  // Создаем и открываем файл для записи
  AssignFile(OutputFile, 'pop.txt');
  Rewrite(OutputFile);

  // Записываем N строк в файл
  for i := 1 to N do
  begin
    for j := 1 to K do
    begin
      Write(OutputFile, '*');
    end;
    Writeln(OutputFile); // Переходим на новую строку после записи K символов
  end;

  // Закрываем файл
  CloseFile(OutputFile);

  Writeln('Файл "pop.txt" успешно создан.');
end.
