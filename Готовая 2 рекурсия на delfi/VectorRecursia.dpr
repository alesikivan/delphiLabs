Program VectorRecursia;
{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;
  var a: array[1..100,1..100] of integer;
      i,j,n,data : integer;
      result : string;
      fin,fout : TextFile;
begin

  AssignFile(fin, 'Inlet.in');        //�������� �����  Inlet.in
  Reset(fin); //��������� �����������
  AssignFile(fout, 'Outlet.out');     //�������� �����  Outlet.out
  rewrite(fout);

  Readln(fin,data); // �������� ����������� ����� � ���������� data

    write('n='); readln(n);
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          a[i,j]:=random(45)-22;
          write(a[i,j]:4);
        end;
      writeln;
    end;
  readln;
  for i:=1 to n do
  begin
  for j:=1 to n do
  begin
    if (i>j) and (a[i,j]<>a[j,i]) then
    begin
    writeln('Y');
    break;
    end
     else
  writeln('N');
  break;
  end;
    break;
    end;

  readln;

  write(fout, n);
    readln;
  CloseFile(fout);                     //�������� �����  Outlet.out
  CloseFile(fin);                     //�������� �����  Inlet.in

end.
