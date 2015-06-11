// Mateusz Jachimski VII Liceum OgÛlnokszta≥cπce im. Zofii Na≥kowskiej w Krakowie
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi

#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    string answer = "";
    do{
       cout <<"Wpisz e aby zakodowac lub d aby odkodowac." << endl;
       cin >> answer;
    }while(answer != "d" && answer != "e");
        int ehash = 0;
    do{
    cout << "Podaj hash: ";
    cin >> ehash;
    }while(ehash < 0 && ehash > 25);
    char text[1000];
    cout << "Podaj text : ";
    cin >> text;
    if(answer == "e")
        for(int i = 0; i < 1000;i++){
            int x = text[i];
            if(x >= 65 && x <= 90)
                x = div(x+ehash-65,26).rem+65;
            text[i] = x;
            if(x >= 97 && x <= 122)
                x = div(x+ehash-97,26).rem+97;
            text[i] = x;
        }
    else
        for(int i = 0; i < 1000;i++){
            int x = text[i];
            if(x >= 65 && x <= 90)
                x = div(x-ehash+65,26).rem+65;
            text[i] = x;
            if(x >= 97 && x <= 122)
                x = div(x-ehash+97,26).rem+97;
            text[i] = x;
        }
    cout << text << endl;
}
