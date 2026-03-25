#include <iostream>

using namespace std;

float bodyTempC();
float bodyTempF();

int main()
{
    cout << "Body temperature in Celsius: " << bodyTempC() << endl;
    cout << "Body temperature in Fahrenheit: " << bodyTempF() << endl;

    return 0;
}

float bodyTempC()
{
    float temperature = 36.6f;
    return temperature;
}

float bodyTempF()
{
    float temperature = 97.9f;
    return temperature;
}   
