// Mateusz Jachimski VII Liceum Ogólnokształcące im. Zofii Nałkowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

var i,j,c,w,h :Integer;
begin
     Write('Podaj wysokosc >');
     Read(h);
     Write('Podaj szerokosc >');
     Read(w);
    for c:=1 to w  do
    Write('*');
    Writeln('');
    For i:=1 to h do
    begin
        Write('*');

        for j:=1 to (w-2) do
        begin
           Write(' ');
        end;
        Writeln('*');
    end;
    for c:=1 to w do
    Write('*');
    Writeln('');
    Readln(c);
end.
