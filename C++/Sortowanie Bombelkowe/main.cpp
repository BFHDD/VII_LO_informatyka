//
//  main.cpp
//  Sortowanie_Bombelkowe
//
//  Created by Mateusz Jachimski on 04.04.2016.
//  Copyright © 2016 ErrorSystems.com. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    int liczby[1000];
    cout << "Podaj kolejno liczby do posortowania:\n";
    int i = -1;
    bool Continue = true;
    do{
        i++;
        int j  = -1;
        cout << "Liczba: ";
        cin >> j;
        if(j == -1){
            Continue = false;
        }else{
            liczby[i]=j;
        }
        
    }while(i < 1000 && Continue == true);
    for(int j = i-1;j > 0;j--){
        for(int k = 0; k < j;k++){
            if(liczby[k] > liczby[k+1]){
                int z = liczby[k];
                liczby[k]=liczby[k+1];
                liczby[k+1]=z;
            }
                
        }
    }
    for(int j = 0;j < i;j++){
        cout << liczby[j];
        cout << "\n";
    }
    return 0;
}//End Main
