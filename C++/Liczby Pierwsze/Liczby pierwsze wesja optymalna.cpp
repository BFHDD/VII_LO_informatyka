// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

#include <iostream>
#include <list.h>
#include <cmath>

#define speed true

using namespace std;

list<int> pierwsze;

bool pierwsza(int x);

int main()
{
    #if !speed
        cout << "Liczby pierwsze:" << endl;
    #endif
    for(int i = 2;i <= 10000; i++){
        #if speed
        pierwsza(i);
        #else
        if(pierwsza(i))
            cout << i << endl;
        #endif
    }
    return 0;
}

bool pierwsza(int x){
    int c = sqrt(x);
    for(list<int>::iterator itr = pierwsze.begin();itr != pierwsze.end();itr++){
        if(div(x,*itr).rem == 0)
            return false;
    }
    pierwsze.push_back(x);
    return true;
}
