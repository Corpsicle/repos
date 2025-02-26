// sub.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <string>
#include <iostream>

using namespace std;


int main()
{
    string text = "I do like the seaside";
    cout << "Original: " << text << endl;
    text.insert(10, "to be beside ");
    cout << "Inserted: " << text << endl;
    text.erase(2, 3);
	cout << "Erased: " << text << endl;
	text.replace(7, 25, "strolling by the sea");
	cout << "Replaced: " << text << endl;
	cout << "Copied: " << text.substr(7, 9) << endl;
	cout << "Last character: " << text.at(text.size() -1) << endl;

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
