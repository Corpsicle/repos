#include <iostream>

using namespace std;

int main()
{
    int a = 8, b = 16;
    int* aPtr = &a;
    int* bPtr;;
    bPtr = &b;
    cout << "Address of pointers ... " << endl;
    cout << "aPtr: " << aPtr << endl;
    cout << "bPtr: " << bPtr << endl;
    cout << "Values in addresses pointed to... " << endl;
    cout << "*aPtr: " << *aPtr << endl;
    cout << "*bPtr: " << *bPtr << endl;

    return 0;
}