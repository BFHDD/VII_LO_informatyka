// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses Crt;
const a=100;
var
  lista: array[0..a] of Integer;
  i,j,X:Integer;
  t:String;
  ok:Boolean;
  Plik:Text;
begin
   clrscr;
   randomize;
   textcolor(15);
   Assign(Plik,'C:\plik.txt');
   Reset(Plik);
   X:=0;
   while not( eof(Plik)) do
    begin
    Readln(Plik,t);
    Val(t,lista[X],i);
    if(i = 0)then
         X:=X+1;
    end;
   Close(Plik);
   writeln;
   for i:=0 to 79 do
   write('=');
   repeat
   ok:=false;
   for i := 0 to X-1 do
   begin
       if(lista[i] > lista[i+1])then
       begin
           ok:=true;
           j:=lista[i+1];
           lista[i+1]:=lista[i];
           lista[i]:=j;
       end;
   end;
   until ok=false;
    for i:=0 to X do
   begin
    write(i);
    write(':');
    write(lista[i]);
    write(' ');
   end;
   REPEAT UNTIL KEYPRESSED;
end.
