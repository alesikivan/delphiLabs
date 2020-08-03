program ExampleSolvQueueDelTList;

uses
  SysUtils;

var
   fin,fout:TextFile ;
   seS : string;
   p,test: string;
   k,i,b,j,n: integer;
   newP, max: double;
   myarray : array of integer;

begin
	    AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
      AssignFile(fout, 'Outlet.out');
	    Rewrite(fout);     // запись в   Outlet.out
      SetLength(myarray, 100);
      i:= 0;
       while(not EOF(fin)) do    //пока не конец
        begin

          Readln(fin,seS);

          setlength(myarray, 30);
          i := i + 1;
          myarray[i-1] := StrToInt(seS);
          setlength(myarray, i);


        end;

        //myarray[0] := high(myarray);

       for j:=high(myarray) downto 0 do
        myarray[j] := myarray[j-1];

       for b := 0 to length(myarray)-1 do
         begin
          writeln(fout, myarray[b])
         end;

        //writeln(fout, myarray[high(myarray)]);
        //writeln(fout, myarray[0]);

       CloseFile(fin);
	     CloseFile(fout);


end.
