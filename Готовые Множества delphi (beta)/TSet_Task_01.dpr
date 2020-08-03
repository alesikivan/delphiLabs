program TSet_Task_01;

{$APPTYPE CONSOLE}

uses
  SysUtils;

//type someLetters = set of char;

var
   fin,fout:TextFile ;
   someLetters : Set of char;
   seS,test,seS2 : string;
   p, p1: string;
   b, n,i, k: integer;

begin
	    AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
      AssignFile(fout, 'Outlet.out');
	    Rewrite(fout);     // запись в   Outlet.out
      someLetters := [];


         test := 'fine';

       while(not EOF(fin)) do    //пока не конец
        begin

            Readln(fin,seS2);
         seS := seS2;
         if (p='') then
         begin
         for i:= 1 to length(seS) do
           begin
               if(seS[i] <> ' ') then
                p:= p + seS[i] else
               begin
                break;
               end;
           end;
           end;


          for k:= 1 to length(p) do
            begin
               include(someLetters, p[k]);
            end;



          for n:= 1 to length(seS)+1 do
            begin
               if(seS[n] <> ' ') and((length(ses)+1)<>n)then
               p1:= p1 + seS[n]
              else
                begin
                for b:= 1 to length(p1) do
                  begin
                   if(p1[b] in someLetters) then
                   begin
                   p1 := '';
                   break;
                   end
                   else
                    write(fout, ' ');
                      end;
                      write(fout, trim(p1), ' ');
                p1 := '';
                end;
            end;



        end;

    //   write(fout, p);

       CloseFile(fin);
	     CloseFile(fout);


end.

