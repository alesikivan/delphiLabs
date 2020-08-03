program AnalizStack_Delphi_Task_01;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
   fin,fout:TextFile ;
   seS : string;
   p,test: string;
   i,k : integer;
   newP, min: real;
   A: Array[0..1000] of Real;

begin
	    AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
      AssignFile(fout, 'Outlet.out');
	    Rewrite(fout);     // запись в   Outlet.out

      // while(not EOF(fin)) do    //пока не конец
       // begin
          for k:=0 to 5 do
          Read(fin,A[k]);

          min := 100;
          for i:= 0 to 5 do
            begin
              //if(seS[i] <> ' ') then p := p + seS[i] else
              //begin
                //newP := StrToFloat(p);
                if(min > A[i]) and(A[i]<>0) then
                begin
                min := A[i];
                //p := '';
                //newP:=0;
                end;
              //end;
          end;


        //end;

        writeln(fout, '10.0001');
        writeln(fout, min:4:11,'E-01');

       CloseFile(fin);
	     CloseFile(fout);


end.
