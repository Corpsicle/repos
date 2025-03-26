// Except.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdexcept>        // Support standard exceptions.
#include <typeinfo>         // Support type information.
#include <fstream>
#include <string>
#include <iostream>

using namespace std;

int main()
{
    string lang = "C++";
    int num = 100000000;    // One Billion.
    try
    { ifstream reader("nonsuch.txt");
    if (!reader) throw logic_error("File not found");
    }
    catch (out_of_range& e)
    {
        cerr << "Range Exception: " << e.what() << endl;
        cerr << "Exception Type: " << typeid(e).name();
        cerr << endl << "Program terminated." << endl;
        
        return -1;
    }
    catch (exception &e)
    {
        cerr << "Exception: " << e.what() << endl;
        cerr << "Exception: " << typeid(e).name() << endl;
    }
    cout << "Program continues ..." << endl;
    
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
