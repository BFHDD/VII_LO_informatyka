// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses crt;
type star = record
     x : Integer;
     y : Integer;
     dx : Integer;
     dy : Integer;
     end;
var
i:Integer;
gwiazdki : array[0..20] of star;
begin
randomize;
clrscr;
for i := 0 to 20 do
begin
gwiazdki[i].x:=random(75)+2;  gwiazdki[i].y:=random(21)+2;
gwiazdki[i].dx:=1; gwiazdki[i].dy:=1;  {krok o jaki przesuwamy polozenie gwiazdki}
end;

repeat
for i := 0 To 20 do
begin   {wybiera mylosowy kolor gwiazdki}
textcolor(black); gotoxy(gwiazdki[i].x,gwiazdki[i].y);write('*');
if ( (gwiazdki[i].x>79) or (gwiazdki[i].x<2) )then gwiazdki[i].dx:=-gwiazdki[i].dx;
if ( (gwiazdki[i].y>24) or (gwiazdki[i].y<2) )then gwiazdki[i].dy:=-gwiazdki[i].dy;
gwiazdki[i].x:=gwiazdki[i].x+gwiazdki[i].dx; gwiazdki[i].y:=gwiazdki[i].y+gwiazdki[i].dy;
gotoxy(gwiazdki[i].x,gwiazdki[i].y);textcolor(random(15));write('*');
end;
delay(70);
until keypressed;
end.

