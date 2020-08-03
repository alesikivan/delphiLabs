Program Project2;
{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

//type
//someDottes = set of 'a';

var
  fin,fout:TextFile ;
 // newSomeDottes : someDottes;
  seS : string;
  text : char;
   s,p,y, newP: string;
   kolPr : integer;
   i, k,a,l: integer;

begin
	AssignFile(fin, 'Inlet.in');  //открытие файла,  fin = Inlet.in
     	Reset(fin);         // Получение содержимого
       AssignFile(fout, 'Outlet.out');
 	Rewrite(fout);     // запись в   Outlet.out

   //someDottes := ['a'];
     y:='';
         p := '';
         a:=0;
                 l:=0;

	  	    Readln(fin,seS);

              for i := 1 to length(seS) do
                begin
                if((seS[i] = ' ') or (seS[i] = '.') )   then
                l:=l+1;
                if (l=length(seS))  then
                     writeln(fout, 'Empty');

                  if (seS[i] <> ' ') then
                  p := p + seS[i]
                    else
                      begin
                        for k := 1 to length(p) do
                          if (p[k]<>'.') and(a=0) then
                           y:= y + p[k]
                           else
                               begin
                                 a:=a+1;
                                writeln(fout, y);
                                break;
                        end;
                        y:='';
                            p := '';
                      end ;

        end;



       CloseFile(fin)    ;
	CloseFile(fout) ;

end.


