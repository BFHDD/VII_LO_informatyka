// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)


    uses graph,crt;
    type cCircle = record
        x:Integer;
        y:Integer;
        r:Integer;
        mx:Integer;
        my:Integer;
        end;
    var sterownik,tryb,pro,i,j,n:smallint;
        ok:Boolean;
        circles:array[0..1000] of cCircle;
    function detect(a:cCircle;b:cCircle):Boolean;
    begin
       detect:=(sqrt((a.x-b.x)*(a.x-b.x)+(a.y-b.y)*(a.y-b.y))<=(a.r+b.r)) ;
    end;
    function detectb(a:cCircle):Boolean;
    begin
       detectb:=(a.x <= a.r) OR (a.x >= (getmaxx - a.r)) OR (a.y <= a.r) OR (a.y >= (getmaxy - a.r)) ;
    end;
    begin
    randomize();
    clrscr;
    Write('Podaj promien : ');
    Read(pro);
    Write('Podaj ilosc : ');
    Read(n);
    detectgraph(sterownik,tryb);
    initgraph(sterownik,tryb,'');
    setcolor(red);
    for i:= 0 to n do
    begin
        with circles[i] do
        begin
           if(pro < 0)then
           begin
             pro:= pro +1;
             if(pro = 0)then
             begin
             pro := 1;
             end
             else
             r:=-pro;
           end
           else
           r:=pro;
           repeat
           ok := false;
           x:=Random(GetMaxX-r);
           y:=Random(GetMaxY-r);
           for j:=0 to i-1 do
           ok := ok or (detect(circles[j],circles[i]));
           ok := ok or detectb(circles[i]);
           until ok = false;
           mx:=((Random(2)-1)*(-2))+1;
           my:=((Random(2)-1)*(-2))+1;
        end;
    end;
    repeat
        for i:=0  to n do
         with circles[i] do
         begin  for J:=0 to n do
                begin
                if(detect(circles[i],circles[j]) and (i<>j))then
                begin
                mx:=mx*(-1);
                my:=my*(-1);
                end;
                end;
                if(detectb(circles[i]))then
                begin
                mx:=mx*(-1);
                my:=my*(-1);
                end;
                setcolor(black);
                circle(x,y,r);
                x:=x+mx;
                y:=y+my;
                setcolor(red);
                circle(x,y,r);
         end;
         delay(1);
    until keypressed;
    closegraph;

    end.
