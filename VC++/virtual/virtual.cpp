// virtual.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

class Parent
{
public :
    void Common() const
    {
        cout << "I am part of this family, ";
    }

	virtual void Identify() const
	{
		cout << "I am the parent" << endl;
	}
};

class Child : public Parent
{
public :
	void Identify() const
	{
		cout << "I am the child" << endl;
	}
};

class Grandchild : public Child
{
public :
	void Identify() const
	{
		cout << "I am the grandchild" << endl;
	}

	void Relate() const
	{
		cout << "Grandchild has parent and grandparent"; 
	}
};

int main()
{
	Child son;
	Grandchild grandson;
	Parent* ptrChild = &son;
	Parent* ptrGrandchild = &grandson;
	ptrChild->Common();				// Ihertited.
	ptrChild->Identify();			// Overriding.
	ptrGrandchild->Common();		// Inherited.
	ptrGrandchild->Identify();		// Overriding.
	ptrChild->Parent::Common();		// Explicit.
	ptrChild->Parent::Identify();	// Explicit.
	grandson.Relate();				// Via instance.

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
