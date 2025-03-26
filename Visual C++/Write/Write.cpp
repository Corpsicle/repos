// Write.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <fstream>
#include <string>
#include <iostream>

using namespace std;

int main()
{
    string poem = "\n\tI never saw a man who looked";
	poem.append("\n\tWith such a wistful eye");
	poem.append("\n\tUpon that little tent of blue");
	poem.append("\n\tWhich prisoners call the sky");
	ofstream writer("poem.txt");
	if (!writer)
	{
		cout << "Error opening file for output" << endl;
		return -1;		// Signal an error then exit the program.
	}
	writer << poem << endl;		// Write output.
	writer.close();				// Close filestream.

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
