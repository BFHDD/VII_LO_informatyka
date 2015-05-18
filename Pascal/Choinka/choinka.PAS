// Mateusz Jachimski VII Liceum Ogólnokształcące im. Zofii Nałkowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses Crt;
type star = record
x,y,c:Integer;
end;
var i,j,x,c,cl,f:Integer;
    stars: array[0..441] of star;
    starson: array[0..51] of star;
procedure chcl;
begin
     c:=0;
     repeat
     c:=Random(14);
     until (c<>0) and (c<>7) and (c<>8) and (c<>2) and (c<>6) and (c<>cl);
     textcolor(c);
     cl:=c;
end;
procedure gift(X:Integer);
begin
    chcl;
    gotoxy(X,25);
    write('**');
    gotoxy(X,23);
    write('**');
    gotoxy(X+3,25);
    write('**');
    gotoxy(X+3,23);
    write('**');
    chcl;
    gotoxy(X,24);
    write('*****');
    gotoxy(X+2,25);
    write('*');
    gotoxy(X+2,23);
    write('*');
    gotoxy(X+1,22);
    write('***');
end;
begin
  cl:=0;
  Randomize;
  for x:=0 to 50 do
  begin
      starson[x].x:=40;
      starson[x].y:=1;
  end;
  textcolor(2);
  x:=0;
  clrscr;
  for i := 0 to 20 do
  begin
     for j := 0 to ((i*2)) do
     begin
        x := x + 1;
        gotoxy((40-i)+j,i+1);
        stars[x].x := (40-i)+j;
        stars[x].y := i+1;
        write('*');
     end;
  end;
  textcolor(6);
  for i := 22 to 25 do
  begin
     for j := 0  to 5 do
     begin
        gotoxy(37+j,i);
        write('*');
     end;
  end;
  for i:=0 to 3 do
  gift(Random(73)+1);
  x:=0;
  gotoxy(40,1);
  repeat
        gotoxy(starson[x].x,starson[x].y);
        textcolor(2);
        delay(1);
        write('*');
        f:=Random(440);
        gotoxy(stars[f].x,stars[f].y);
        starson[x].x:=stars[f].x;
        starson[x].y:=stars[f].y;
        chcl;
        delay(1);
        write('*');
        x:=x+1;
        if x > 50 then
        x:=0;
        delay(15);
  until keypressed;
end.
