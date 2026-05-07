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
        void bark(string noise) {cout << noise << endl;}
        Dog();
        Dog(int, int);
        Dog(int, int, string);
        
        ~Dog();

        int getAge() {return age;}
        int getWeight() {return weight;}
        string getColor() {return color;}
} ;

Dog::Dog()
{
    age = 1;
    weight = 2;
    color = "black";
}

Dog::Dog(int age, int weight)
{
    this->age = age;
    this->weight = weight;
    color = "white";
}

Dog::Dog(int age, int weight, string color)
{
    this->age = age;
    this->weight = weight;
    this->color = color;
}

Dog::~Dog()
{
    cout << "object destroyed." << endl;
}

int main()
{
    Dog fido(3, 15, "brown");
    cout << "Fido is a " << fido.getColor() << " Dog" << endl;
    cout << "Fido is " << fido.getAge() << " years old" << endl;
    cout << "Fido weighs " << fido.getWeight() << " pounds" << endl;
    fido.bark();

    Dog Pooch(4, 18, "Gray");
    cout << "Pooch is a " << Pooch.getAge();
    cout << " year old " << Pooch.getColor();
    cout << " Dog who weighs " << Pooch.getWeight();
    cout << " pounds. ";
    Pooch.bark();

    Dog rex;
    cout << "Rex is a " << rex.getAge();
    cout << "year old " << rex.getColor();
    cout << " Dog who weighs " << rex.getWeight();
    cout << " pounds. ";
    rex.bark("GRRR!");

    Dog sammy(2, 6);
    cout << "Sammy is a " << sammy.getAge();
    cout << " year old " << sammy.getColor();
    cout << " Dog who weighs " << sammy.getWeight();
    cout << " pounds. ";
    sammy.bark("BOWWOW!");

    return 0;
}
