Program new1;
{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
fin,fout:TextFile ;
  seS : string;
   schetchikStrok : integer;
   s,p: string;
   kolPr : integer;
   i, k ,a: integer;

begin
	AssignFile(fin, 'Inlet.in');  //�������� �����,  fin = Inlet.in
     	Reset(fin);         // ��������� �����������
       AssignFile(fout, 'Outlet.out');
	Rewrite(fout);     // ������ �   Outlet.out
       while(not EOF(fin)) do    //���� �� �����
        begin
	  	    Readln(fin,seS);
            for i:= 0 to length(seS)+1 do
          begin
            if (seS[i] <> ' ') and (length(ses)+1 <> i) then p:= p + seS[i]
            else
            begin

            for k:= 0 to length(p)-1 do
            begin
              if seS[i-1] = p[k] then
                p[k] := '_';

            end;
            write(fout,p,' ');
              write(p,' ');
            p:= '';
            end;

          end;
           writeln(fout);
            writeln;
        end;
    //SetLength(seS, kolPr);
   	//for schetchikStrok:=0 to kolPr-1 do
  	 //	Readln(fin, seS[schetchikStrok]);

       CloseFile(fin)    ;
	CloseFile(fout) ;
    readln;

end.


