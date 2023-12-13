program z_1;
var
  filetext: text;
  a: string;
  i: integer;
begin
  assign(filetext, 'text.txt');
  
  // Открываем файл для записи
  rewrite(filetext);
  for i := 1 to 10 do
    writeln(filetext, i);
  
  // Закрываем файл перед открытием снова
  close(filetext);
  
  // Открываем файл для чтения
  reset(filetext);
  for i := 1 to 10 do
  begin
    readln(filetext, a);
    writeln(a);
  end;
  
  // Закрываем файл после чтения
  close(filetext);
end.
