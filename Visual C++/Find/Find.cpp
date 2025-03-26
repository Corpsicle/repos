// Find.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <string>
#include <iostream>

using namespace std;

int main()
{
    string text = "I can resist anything but temptation.";
    int num;
	num = text.find("resist",0);
	cout << "Position: " << num << endl;
	num = text.find("nonsuch", 0);
	cout << "Result: " << num << endl;
	num = text.find_first_of("if");
	cout << "First I: " << num << endl;
	num = text.find_first_not_of("if");
	cout << "First not I: " << num << endl;
	num = text.find_last_of("t");
	cout << "Last t: " << num << endl;
	num = text.find_last_not_of("t");
	cout << "Last not t: " << num << endl;

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
