program z_3;

var
  S: string;
  FileName: string;
  textfile: Text;

begin
  // Введите строку S
  Write('Введите строку S: ');
  Readln(S);


  FileName := 'BIMBIM.txt';

  try
    // Открываем файл для добавления строки в конец
    Assign(textfile, FileName);
    Append(textfile);

    // Записываем строку S в конец файла
    Writeln(textfile, S);

    // Закрываем файл
    Close(textfile);

    writeln('Строка успешно добавлена в конец файла.');
  except
    on E: Exception do
      writeln('Ошибка: ', E.Message);
  end;
end.
