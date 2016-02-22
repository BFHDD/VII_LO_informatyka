/*
 * Ten utwór jest dostępny na licencji Creative Commons
 * Uznanie autorstwa - Użycie niekomercyjne - Na tych
 * samych warunkach 4.0 Międzynarodowe. Aby zapoznać
 * się z tekstem licencji wejdź na stronę
 * http://creativecommons.org/licenses/by-nc-sa/4.0/.
 *
 * Made by Dariusz Czajkowski 2015
 */

// Coding and decoding
#include<iostream>
#include<cstdlib>
#include<cstring>

// For characters comparison
#include<string>

// For file manipulation
#include<fstream>

// namespace declaration
using namespace std;


void coder(int key, char tab[]) {
	int dl = strlen(tab); // defines number of characters

	if(key >= 0) {
		for(int i=0; i<dl; i++) {
			if (tab[i] != 32 and tab[i] != ' ' and tab[i] != '\n' and tab[i] != '.' and tab[i] != ',') {
				tab[i] = (tab[i] - 65 + key)%26 + 65;
			}
		}
	} else {
		for(int i=0;i<dl;i++) {
			if (tab[i] != 32 and tab[i] != ' ' and tab[i] != '\n' and tab[i] != '.' and tab[i] != ',') {
				tab[i] = (tab[i] + 65 + key)%26 + 65;
			}
		}
	}
}

int main() {
	char tab[1001]; // array of characters - max 1000 chars.

	int key; // move of characters
	int action; // coding/decoding action

	cout<<"Witaj w Piano - the cezar coder/decoder ver. 1.0\n";
	cout<<"Made by Dariusz Czajkowski\n";
	cout<<"Made in Krakow, Poland 2015\n\n";
	cout<<"Program sluzy do szyfrowania i odszyfrowywania systemem cezara.\nDozwolone sa tylko wielkie litery, spacje, kropki, przecinki i entery.\nReszta nie zostanie poprawnie zaszyfrowana.\n\n";
	cout<<"Wybierz akcje, aby kontynuowac:\n";
	cout<<"1. Szyfrowanie\n";
	cout<<"2. Odszyfrowanie\n";
	cin>>action;

	if (action != 1 and action != 2) {
		cout<<"Podaj akcje z przedzia³u [1,2]";
		exit(1);
	}


	if (action == 1) {
		ifstream customfile("odszyfrowany.txt"); // Open file
		if (customfile.is_open()) {
			string contents((istreambuf_iterator<char>(customfile)), istreambuf_iterator<char>()); // Apply content of the file to (string) contents
			strcpy(tab, contents.c_str()); // Apply content of the file to (array) tab

			customfile.close();
		} else {
			cout<<"Wystapil problem z otwarciem pliku.";
			exit(1);
		}
	} else if (action == 2) {
		ifstream customfile("zaszyfrowany.txt"); // Open file
		if (customfile.is_open()) {
			string contents((istreambuf_iterator<char>(customfile)), istreambuf_iterator<char>()); // Apply content of the file to (string) contents
			strcpy(tab, contents.c_str()); // Apply content of the file to (array) tab

			customfile.close();
		} else {
			cout<<"Wystapil problem z otwarciem pliku.";
			exit(1);
		}
	}

	cout<<"Podaj klucz z przedzialu [0, 10]: ";
	cin>>key;

	if (action == 1) {
		coder(key, tab); // coding

		ofstream customfile2;
		customfile2.open("zaszyfrowany.txt");
		customfile2 << "Plik zostal zaszyfrowany przy pomocy programu Piano the cezar coder/decoder ver. 1.0\n";
		customfile2 << "Made by Dariusz Czajkowski\n\n" << tab;
		customfile2.close();
		cout << "Plik zostal pomyslnie zaszyfrowany do <zaszyfrowany.txt>.\n";
	} else if (action == 2) {
		coder(-key, tab); // decoding

		ofstream customfile2;
		customfile2.open("odszyfrowany.txt");
		customfile2 << "Plik zostal zaszyfrowany przy pomocy programu Piano the cezar coder/decoder ver. 1.0\n";
		customfile2 << "Made by Dariusz Czajkowski\n\n" << tab;
		customfile2.close();
		cout << "Plik zostal pomyslnie odszyfrowany do <odszyfrowany.txt>.\n";
	}

	system("pause");
	return 0;
}
