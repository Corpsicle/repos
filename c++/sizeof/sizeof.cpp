#include <iostream>

using namespace std;

int main() 
{
    // Program code goes here. 
    int num;        int nums[50];        float decimal;
    bool isTrue;    unsigned int max;   char letter;
    double pi;      short int number;   char letters[50];

    cout << "int size: " << sizeof( num ) << " bytes" << endl;
    cout << "50 int size: " << sizeof( nums ) << " bytes" << endl;
    cout << "short int size: " << sizeof( number ) << " bytes" << endl;
    cout << "unsigned int size: " << sizeof( max ) << " bytes" << endl;
    cout << "double size: " << sizeof( pi ) << " bytes" << endl;
    cout << "float size: " << sizeof( decimal ) << " bytes" << endl;
    cout << "char size: " << sizeof( letter ) << " bytes" << endl;
    cout << "50 char size: " << sizeof( letters ) << " bytes" << endl;
    cout << "bool size: " << sizeof( isTrue ) << " bytes" << endl;

    return 0;

}