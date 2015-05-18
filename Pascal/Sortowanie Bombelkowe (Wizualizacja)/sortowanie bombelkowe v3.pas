// Mateusz Jachimski VII Liceum Ogólnokształcące im. Zofii Nałkowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses Crt,graph;
const X=10;
var
  lista: array[0..X] of Integer;
  i,j:Integer;
  ok,ck:Boolean;
  sterownik,tryb : Smallint;
begin
   clrscr;
   randomize;
   detectgraph(sterownik,tryb);
   initgraph(sterownik,tryb,'');
   textcolor(15);
   for i:=0 to X do
   begin
   lista[i] := Random(1000);
   write(i);
   write(' --> ');
   writeln(lista[i]);
   end;
   writeln('');
   repeat
   ok:=false;
   for i := 0 to X-1 do
   begin
        ck:= false;
       if((lista[i] > lista[i+1]) and (i <> X-1))then
       begin
           ok:=true;
           ck:=true;
           j:=lista[i+1];
           lista[i+1]:=lista[i];
           lista[i]:=j;
       end;
       for j:=0 to X-1 do
               begin
                    SetFillStyle(SolidFill,black);
                    bar(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,0);
                    if((i+1 = j) and (ck = true))then
                    begin
                         SetFillStyle(SolidFill,green);
                         bar(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,getmaxy-(lista[j]*round(getmaxy/1000)));
                    end else if (i = j)  then begin
                        if(ck = true) then begin
                            SetFillStyle(SolidFill,red);
                        end else begin
                           SetFillStyle(SolidFill,green);
                        end;
                         bar(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,getmaxy-(lista[j]*round(getmaxy/1000)));
                    end else begin
                          rectangle(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,getmaxy-(lista[j]*round(getmaxy/1000)));
                    end;

               end;
               delay(1000);
   end;
   until ok=false;
   for j:=0 to X-1 do
               begin
                 SetFillStyle(SolidFill,black);
                 bar(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,0);
                 rectangle(j*round(getmaxx/X),getmaxy,(j+1)*round(getmaxx/X)-1,getmaxy-(lista[j]*round(getmaxy/1000)));
               end;
    for i:=0 to X do
   begin
   write(i);write(' --> ');writeln(lista[i]);
   end;
   REPEAT UNTIL KEYPRESSED;
end.
