program AnalizStack_Delphi_Task_01;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

var
   fin,fout:TextFile ;
   seS : string;
   p,test: string;
   i,j,k : integer;
   newP, min: real;
   A: Array[0..100,0..100] of Real;

begin
	    AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
      AssignFile(fout, 'Outlet.out');
	    Rewrite(fout);     // запись в   Outlet.out

      // while(not EOF(fin)) do    //пока не конец
       // begin
          for i:=0 to 1 do
          begin
                 for j:=0 to 10 do
                 begin
                     Read(fin,A[i,j]);
                     end;
                       Readln;
                     end;


                     write(fout, power(A[0,0],2):2:0,' ');
                     write(fout, (2*A[0,1]):2:0);
                       writeln(fout);
                         write(fout, 2*A[0,0]*A[0,1]:2:0,' ');
                           write(fout, ((2*A[0,1])-1):2:0,' ');
                              writeln(fout);
                             write(fout, power(A[0,1],2):2:0,' ');
                               write(fout, (power(A[1,1],2)):2:0,' ');


       CloseFile(fin);
	     CloseFile(fout);


end.
