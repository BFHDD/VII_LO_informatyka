// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses Crt;
const a=122-48;
var
   linia:String;
   Plik:text;
   i,j:Integer;
   wynik: Array [0..a] of Integer;
begin
    Clrscr;
    for i:=0 to a do
    wynik[i]:=0;
    Assign(Plik,'C:\plik.txt');
    Reset(Plik);
    while not EOF(Plik) do
    begin
    readln(Plik,linia);
         for i:=0 to length(linia) do
         begin
             j:=ord(linia[i]);
             if( (j >= 48) and (j <= 122) )then
             begin
                j:=j-48;
                Inc(wynik[j]);
             end;
         end;
    end;
     for i:=0 to a do
     begin
      write(chr(48+i));
      write(':');
      write(wynik[i]);
      write(' ');
      end;
      repeat
      until keypressed;
end.
