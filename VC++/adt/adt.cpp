// adt.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

class Shape
{
public :
	virtual int getArea() = 0;
	virtual int getEdge() = 0;
	virtual void Draw() = 0;
};

class Rect : public Shape
{
private :
	int height, width;

public :
	Rect(int initWidth, int initHeight)
	{
		height = initHeight;
		width = initWidth;
	}

	~Rect();

	int getArea() { return height * width; }
	int getEdge() { return (2 * height) + (2 * width); }

	void Draw()
	{
		for (int i = 0; i < height; i++) 
		{
			for (int j = 0; j < width; j++)
			{
				cout << "X "; 
			}
			cout << endl;
		}
	}

};

int main()
{
	Shape* pQuad = new Rect(7, 3);
	Shape* pSquare = new Rect(5, 5);
	
	pQuad->Draw();
	cout << "Area is " << pQuad->getArea() << endl;
	cout << "Perimeter is " << pQuad->getEdge() << endl;

	pSquare->Draw();
	cout << "Area is " << pSquare->getArea() << endl;
	cout << "Perimeter is " << pSquare->getEdge() << endl;

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
