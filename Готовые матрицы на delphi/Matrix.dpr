program Matrix;
{$APPTYPE CONSOLE}
{$R *.res}
uses SysUtils;
var fin, fout : textfile;
    A : array of array of integer;
    N, M, i, j, max, c : integer;
    B : array of integer;
    k : integer;
begin
  assignfile(fin, 'Inlet.in');
  reset(fin);
  read(fin, N, M);

  setlength(B, N * M);
  for k := 0 to N * M - 1 do
    read(fin, B[k]);

  max := B[0];
  for k := 0 to N * M - 1 do
    if max < B[k]
      then max := B[k];

  finalize(B);
  max := max + 1;

  reset(fin);
  read(fin, N, M);
  setlength(A, N + 2, M + 2);
    for i := 0 to N + 1 do
      for j := 0 to M + 1 do
        if (i = 0) or (i = N + 1) or (j = 0) or (j = M + 1)
          then A[i, j] := max
          else read(fin, A[i, j]);
  closefile(fin);

  c := 0;
  for i := 1 to N do
    for j := 1 to M do
      if (A[i, j] < A[i - 1, j - 1])
          and (A[i, j] < A[i - 1, j])
          and (A[i, j] < A[i - 1, j + 1])

          and (A[i, j] < A[i, j - 1])
          and (A[i, j] < A[i, j + 1])

          and (A[i, j] < A[i + 1, j - 1])
          and (A[i, j] < A[i + 1, j])
          and (A[i, j] < A[i + 1, j + 1])
            then
              begin
                c := c + 1;
                //writeln(c, ' ', A[i, j]);
              end;
  finalize(A);


  assignfile(fout, 'Outlet.out');
  rewrite(fout);
  write(fout, c);
  closefile(fout);
  readln;
end.
