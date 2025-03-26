// object.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <string>
#include <iostream>

using namespace std;

class Dog
{
private:
    int age, weight;
    string color;
public:
    void bark() { cout << "WOOF!" << endl; }
    void setAge(int yrs) { age = yrs; }
    void setWeight(int lbs) { weight = lbs; }
    void setColor(string hue) { color = hue; }

    int getAge() { return age; }
    int getWeight() { return weight; }
    string getColor() { return color; }
};

int main()
{
    Dog fido;
    fido.setAge(3);
    fido.setWeight(15);
    fido.setColor("Brown");

    cout << "Fido is a " << fido.getColor() << " dog" << endl;
    cout << "Fido is " << fido.getAge() << " years old" << endl;
    cout << "Fido weighs " << fido.getWeight() << " pounds" << endl;
    fido.bark();

    return 0;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
