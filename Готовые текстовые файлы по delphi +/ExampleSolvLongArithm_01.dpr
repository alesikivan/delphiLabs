program ExamplSolvLongArithm_01;


{$APPTYPE CONSOLE}

uses
  SysUtils;

var
   fin,fout:TextFile ;
   seS : string;
   schetchikStrok : integer;
   s,p, max,max1, test: string;
   kolPr : integer;
   q,i, k, count: integer;

begin
	    AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
      AssignFile(fout, 'Outlet.out');
	    Rewrite(fout);     // запись в   Outlet.out
       max := '';
       q := 0;
       k:=0;
       while(not EOF(fin)) do    //пока не конец
        begin
        q := q + 1;
         Readln(fin,seS);
          for i:= 0 to length(seS)+1 do
            begin
              if (seS[i] <> ' ') and (length(seS)+1 <> i) then p:= p + seS[i]
              else
              begin
                 if (length(trim(max)) = length(p))  then
              begin
              k:=k+1;
              max1 := max + ' ' + p;
              end;
              if(length(trim(max)) < length(p)) then
               begin
              max := p;
              k:=0;
               end;


              p:= '';
              end;

             // if(length(max) < length(p)) then max := p;
            end;
            if k>=1 then
                     writeln(fout,max1,' ')
                     else
                      writeln(fout,max,' ');
              max:='';
              max1:='';
              k:=0;
        end;

       CloseFile(fin);
	     CloseFile(fout);


end.
