// constructor.cpp : This file contains the 'main' function. Program execution begins and ends there.
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
    Dog(int, int, string);
    ~Dog();
    void bark() { cout << "WOOF!" << endl; }
    int getAge() { return age; }
    int getWeight() { return weight; }
    string getColor() { return color; }
};

Dog::Dog(int age, int weight, string color)
{
    this->age = age;
    this->weight = weight;
    this->color = color;
}

Dog::~Dog()
{
    cout << "Object destroyed." << endl;
}

int main()
{
    Dog fido(3 ,15, "brown");
    Dog pooch(4, 18, "gray");
    
    cout << "Fido is a " << fido.getColor() << " dog" << endl;
    cout << "Fido is " << fido.getAge() << " years old" << endl;
    cout << "Fido weighs " << fido.getWeight() << " pounds" << endl;
    fido.bark();

    cout << "Pooch is a " << pooch.getAge();
    cout << " year old " << pooch.getColor();
    cout << " dog who weighs " << pooch.getWeight();
    cout << " pounds.";
    pooch.bark();

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
