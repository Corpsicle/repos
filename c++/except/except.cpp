#include <stdexcept>        // support sandard exceptions
#include <typeinfo>         // support type information
#include <fstream>
#include <string>
#include <iostream>

using namespace std;

int main()
{
    string lang = "C++";
    int num = 1000000000000; 
    try
    {
        ifstream reader("non_existent_file.txt");
        if ( !reader )
            throw runtime_error("File not found");
    }
    catch ( out_of_range &e)
    {
        cerr << "Range Exeption: " << e.what() << endl;
        cerr << "Exception type: " << typeid(e).name();
        cerr << endl << "Program Terminated..." << endl;
        return -1;
    }
    catch ( exception &e )
    {
        cerr << "Exception: " << e.what() << endl;
        cerr << "Exception type: " << typeid(e).name();
    }

    return 0;
}
