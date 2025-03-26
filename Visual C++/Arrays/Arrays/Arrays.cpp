// Arrays.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int main()
{
    // Declared then initialized.
    float nums[3];
    nums[0] = 1.5;
    nums[1] = 2.75;
    nums[2] = 3.25;

    // Declared and initialized.
    char name[5] = { 'a', 'l', 'a', 'n', '\0' };
    int coords[2][3] = { {1, 2, 3}, {4, 5, 6} };

    cout << "nums[0]: " << nums[0] << endl;
	cout << "nums[1]: " << nums[1] << endl;
	cout << "nums[2]: " << nums[2] << endl;
	cout << "name[0]: " << name[0] << endl;
	cout << "Text string: " << name << endl;
	cout << "coords[0][2]: " << coords[0][2] << endl;
	cout << "coords[1][2]: " << coords[1][2] << endl;

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
