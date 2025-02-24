// Overload.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

float computeArea(float);
float computeArea(float, float);
float computeArea(char, float, float);


int main()
{
	// program code goes here
	float num, area;
	cout << "Enter dimension in feet: ";
	cin >> num;
	area = computeArea(num);
	cout << "circle area = " << area << " sq. ft." << endl;
	area = computeArea(num, num);
	cout << "square area = " << area << " sq. ft." << endl;
	area = computeArea('T', num, num);
	cout << "triangle area = " << area << " sq. ft." << endl;

    return 0;
}

float computeArea(float diameter)
{
	float radius = (diameter / 2);
	return (3.141593 * (radius * radius) );
}

float computeArea(float width, float height)
{
	return ( width * height );
}

float computeArea(char letter, float width, float height)
{
	return (( width / 2) * height );
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
