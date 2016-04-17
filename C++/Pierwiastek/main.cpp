//
//  main.cpp
//  Pierwiastek
//
//  Created by Mateusz Jachimski on 04.04.2016.
//  Copyright © 2016 ErrorSystems.com. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    float p = -1;
    do{
        cout << "Podaj liczbe do przepierwiastkowania: ";
        cin >> p;
    }while(p <= 0);
    float resoult = 0;
    for(float i = 0;i*i <= p;i+=0.01)
        resoult = i;
    cout << "Pierwiastek wynosi: ";
    cout << resoult;
    return 0;
}
