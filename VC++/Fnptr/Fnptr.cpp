// Fnptr.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

void writeOutput(int*);
void computeTriple(int*);

int main()
{
	int num = 5;
	int* ptr = &num;
	writeOutput(ptr);
	*ptr += 15;	//Add and assign a dereferenced value
	writeOutput(ptr);
	computeTriple(ptr);
	writeOutput(ptr);

	return 0;
}

void writeOutput(int* value)
{
	cout << "Current value: " << *value << endl;
}

void computeTriple(int* value)
{
	*value *= 3;	//Multiply and assign dereferenced value
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
