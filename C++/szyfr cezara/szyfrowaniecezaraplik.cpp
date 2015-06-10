// Mateusz Jachimski VII Liceum OgÛlnokszta≥cπce im. Zofii Na≥kowskiej w Krakowie
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi

#include <iostream>
#include <cmath>
#include <fstream>

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
    char text[1024];
    fstream inplk;
    inplk.open("in.txt",ios::in);
    if(!inplk.good())
        return(1);
    fstream outplk;
    outplk.open("output.txt",ios::out);
    while(!inplk.eof()){
    inplk.read(text,1024);
    cout << "Input: " << endl << text << endl;
     if(answer == "e")
        for(int i = 0; i < 1024;i++){
            int x = text[i];
            if(x >= 65 && x <= 90)
                x = ((x+ehash-65)%26)+65;
            text[i] = x;
        }
    else
        for(int i = 0; i < 1024;i++){
            int x = text[i];
            if(x >= 65 && x <= 90)
                x = ((x-ehash+65)%26)+65;
            text[i] = x;
        }
        cout << "Output: " << endl << text << endl;
        outplk << text;
    }
    outplk.close();
    inplk.close();
}
