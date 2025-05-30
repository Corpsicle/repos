// While.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include<vector>
#include <iostream>
using namespace std;

#include <limits>

int main()
{
    vector <int> vec(10);
    int i = 0;

    while (i < vec.size())
    {
        i++;                // Increment the counter.
        if (i == 3) { cout << " | Skipped"; continue; }     // Skip the element.
        if (i == 8) { cout << endl << "Done"; break; }      // Break the loop.
        if (i - 1 < 0 || i - 1 >= vec.size()) {             // Check for overflow
            cout << " | Overflow";
            continue;
        }
        vec[i - 1] = static_cast<int>(i);                   // Assign count to the element.
        cout << " | " << vec[i - 1];
    }

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
