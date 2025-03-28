// hierarchy.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

class Boat
{
protected :
	int length;
	public :
		int getLength() { return length; }
		virtual void Model() = 0;
};

class Sailboat : public Boat
{
protected:
	int mast;
public:
	int getMast() { return mast; }
	virtual void Boom() = 0;
};

class Laser : public Sailboat
{
public:
	Laser() { mast = 19; length = 35; }
	~Laser();
	void Model() { cout << "Laser Classic" << endl; }
	void Boom() { cout << "Boom: 14ft" << endl; }
};

int main()
{
	Laser* pLaser = new Laser;
	pLaser->Model();
	cout << "Length: " << pLaser->getLength() << "ft" << endl;
	cout << "Height: " << pLaser->getMast() << "ft" << endl;
	pLaser->Boom();

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
