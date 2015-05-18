// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses Crt,graph;
const X=10;
var
  lista: array[0..X] of Integer;
  i,j:Integer;
  ok:Boolean;
  sterownik,tryb : Smallint;
procedure drawarray();
begin
   cleardevice;
   for i:=0 to X-1 do
   begin
       rectangle(i*round(getmaxx/X),getmaxy,(i+1)*round(getmaxx/X)-1,getmaxy-(lista[i]*round(getmaxy/1000)));
   end;
   delay(1000);
end;
begin
   clrscr;
   randomize;
   detectgraph(sterownik,tryb);
   initgraph(sterownik,tryb,'');
   textcolor(15);
   setcolor(white);
   for i:=0 to X do
   begin
   lista[i] := Random(1000);
   write(i);
   write(':');
   writeln(lista[i]);
   end;
   writeln('=============');
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
           drawarray();
       end;
   end;
   until ok=false;
    for i:=0 to X do
   begin
   write(i);write(':');writeln(lista[i]);
   end;
   REPEAT UNTIL KEYPRESSED;
end.
