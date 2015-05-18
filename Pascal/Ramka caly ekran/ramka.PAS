// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
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
