Program z_4;
var
  f, g: text;
  j, k, n, i: integer;
  s: string;

begin
  assign(f, '1528.txt'); 
  rewrite(f);
  Write('Сколько строк записать в файл? ');
  Readln(n);
  Writeln('Введите строки в файл:');
  For i := 1 to n do // запись строк в файл
  begin
    Readln(s);
    Writeln(f, s);
  end;
  close(f);

  write('Номер строки для вставки пустой строки: ');
  readln(k);
  Assign(g, 'out.txt');
  Rewrite(g);
  Reset(f); // вставка пустой строки
  j := 0;
  While not Eof(f) do
  Begin
    readln(f, s);
    if k = j + 1 then
      writeln(g);
    inc(j);
    writeln(g, s);
  End;
  close(f);
  close(g);

  erase(f);
  rename(g, '1528.txt'); 
end.

