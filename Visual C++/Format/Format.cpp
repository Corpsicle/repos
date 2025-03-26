// Format.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <fstream>      // Include filestream support
#include <string>
#include <iostream>

using namespace std;

int main()
{
    const int RANGE = 12;
    string tab[RANGE];
    int i = 0, j = 0;

    ifstream reader("records.txt");
    if (!reader)
    {
        cout << "Error opening input file" << endl;
        return -1;
    }
    while (!reader.eof() && i < RANGE)
    {
        if ((i + 1) % 4 == 0)
            getline(reader, tab[i++], '\n');
        else
            getline(reader, tab[i++], '\t');
    }
    reader.close();
    i = 0;
    while (i < RANGE)
    {
        cout << endl << "Record Number: " << ++j << endl;
        cout << "Forename: " << tab[i++] << endl;
        cout << "Surname: " << tab[i++] << endl;
        cout << "Department: " << tab[i++] << endl;
        if (i < RANGE) // Ensure we do not read out of bounds
            cout << "Telephone: " << tab[i++] << endl;
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
