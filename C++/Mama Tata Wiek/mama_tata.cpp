// Mateusz Jachimski VII Liceum Ogólnokszta³cšce im. Zofii Na³kowskiej w Krakowie 
// Nie kopiuj pozmieiaj cos i oddaj Jobsowi ;)

#include "iostream"
#include "cmath"
using namespace std;


int main()
{
	int wiekmatkibinarnie;
	cout << "Podaj wiek matki (Binarnie): ";
	cin >> wiekmatkibinarnie;
	int wiekmatki = 0;
	for (int i = 0; wiekmatkibinarnie > 0; i++){
		int digit = wiekmatkibinarnie - floor(wiekmatkibinarnie / 10) * 10;
		if (digit == 1){
			wiekmatki += pow(2, i);
		}
		wiekmatkibinarnie = floor(wiekmatkibinarnie / 10);
	}
	int wiekojca;
	cout << "Podaj wiek ojca (Szesnastkow): ";
	scanf_s("%x", &wiekojca);
	printf("Wiek ojca i matki (Usemkow): %o \n", wiekojca + wiekmatki);
	system("Pause");
	return 0;
}

