// Mateusz Jachimski VII Liceum Og�lnokszta�c�ce im. Zofii Na�kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)
uses Crt;
var i,a:Integer;
begin
   for i := 0 to 79 do
   begin
      write('*');
   end;
   for i := 0 to 22 do
   begin
       write('*');
       for a := 0 to 77 do
       begin
         write(' ');
       end;
       write('*');
   end;
   for i := 0 to 79 do
   begin
      write('*');
   end;
   writeln('');
   REPEAT UNTIL KEYPRESSED;
end.
