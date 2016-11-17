// Mateusz Jachimski VII Liceum Ogólnokszta³c¹ce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

#include "iostream"
using namespace std;

int main()
{
	int zakres;
	cout << "Podaj zakers wyszukiwania: ";
	cin >> zakres;
	for (int i = 2; i <= zakres; i++){
		bool ok = true;
		for (int j = 2; j < i; j++){
			if (i % j == 0){
				ok = false;
			}
		}
		if (ok == true){
			cout << i << endl;
		}
	}
	system("Pause");
	return 0;
}

