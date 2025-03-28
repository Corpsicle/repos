// birds.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

class Bird
{
public :
    virtual void Talk() const
    {
        cout << "A bird talks..." << endl;
    }

	virtual void Fly() const
	{
		cout << "A bird flies..." << endl;
	}
};

class Pigeon : public Bird
{
public :
	void Talk() const
	{
		cout << "Coo! Coo!" << endl;
	}

	void Fly() const override
	{
		cout << "A pigeon flies away..." << endl;
	}
};

class Chicken : public Bird
{
public :
	void Talk() const
	{
		cout << "Cluck! Cluck!" << endl;
	}
	
	void Fly() const override
	{
		cout << "I\'m just a chicken ... I can't fly..." << endl;
	}
};


int main()
{
	Bird* pPigeon = new Pigeon;
	Bird* pChicken = new Chicken;
	pPigeon->Talk();
	pPigeon->Fly();
	pChicken->Talk();
	pChicken->Fly();
	pPigeon->Bird::Talk();
	pChicken->Bird::Fly();			// Inappropriate call.

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
