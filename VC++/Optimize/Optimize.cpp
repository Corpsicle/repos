// Optimize.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int computeFactorial(int, int);
inline int factorial(int n)
{return (n == 1) ? 1 : (factorial(n - 1) * n);}


int main()
{
	// program code goes here
	computeFactorial(1, 8);
    return 0;
}

int computeFactorial(int num, int max)
{
	cout << "Factorial of " << num << " : ";
	cout << factorial(num) << endl;			// statements.
	num++;									// increnter. 
	if (num > max) return 0;				// exit...
	else return computeFactorial(num, max);	// or call again.
	{
		computeFactorial(num, max);
	}
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
