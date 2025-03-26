// Capability.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

class Bird
{
public:
	virtual int Talk() const { return -1; }
	virtual int	Fly() const { return -1; }
};

class Pigeon : public Bird
{
public:
	int Talk() const
	{ cout << "Coo! Coo!" << endl; return 0; }
	int Fly() const
	{ cout << "A pigeon flies away..." << endl; return 0; }
};

class Chicken : public Bird
{
public:
	int Talk() const
	{
		cout << "Cluck! Cluck!" << endl; return 0;
	}
	int Fly() const
	{
		cout << "I'm just a chicken - I can\'t fly!" << endl; return 0;
	}
};


int main()
{
	Bird* pPigeon = new Pigeon;
	Bird* pChicken = new Chicken;
	pPigeon->Talk();
	pChicken->Talk();

	pPigeon->Bird::Talk();
	if (-1) { cout << "ERROR! - Program ended." << endl; return 0; }
	pPigeon->Fly();			// Call will not be made.
	pChicken->Fly();		// Call will not be made.
	
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
