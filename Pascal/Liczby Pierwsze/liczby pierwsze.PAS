// Mateusz Jachimski VII Liceum Og�lnokszta�c�ce im. Zofii Na�kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

uses crt;
var
   x,i,j:Integer;
   b:Boolean;

begin
    write('Podaj gorny zakres:');
    read(x);
    for j:=2 to x do
    begin
    b:=true;
    i:=2;
        while ((i < j-1) AND (b))do
        begin
        inc(i);
            if(j mod i) = 0 then
            begin
                b:=false;
            end;
        end;
        if(b)then
        begin
             writeln(j);
        end;
    end;
    REPEAT UNTIL KEYPRESSED;
end.
