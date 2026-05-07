#include <string>
#include <iostream>

using namespace std;

class Dog
{
    private:
        int age, weight;
        string color;
    public:
        void bark() {cout << "WOOF!" << endl;}
        void setValues(int ,int, string);
        int getAge() {return age;}
        int getWeight() {return weight;}
        string getColor() {return color;}
} ;

void Dog:: setValues(int age, int weight, string color)
{
    this->age = age;
    this->weight = weight;
    this->color = color;
}

int main()
{
    Dog fido;
    fido.setValues(3,15,"brown");
    cout << "Fido is a " << fido.getColor() << " Dog" << endl;
    cout << "Fido is " << fido.getAge() << " years old" << endl;
    cout << "Fido weighs " << fido.getWeight() << " pounds" << endl;
    fido.bark();

    Dog Pooch;
    Pooch.setValues(4, 18,"Gray");
    cout << "Pooch is a " << Pooch.getAge();
    cout << " year old " << Pooch.getColor();
    cout << " Dog who weighs " << Pooch.getWeight();
    cout << " pounds" << endl;
    Pooch.bark();

    return 0;
}
