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
        lang.resize( 3 * num );
    }
    catch ( out_of_range &e)
    {
        cerr << "Range Exeption: " << e.what() << endl;
        cerr << "Exception type: " << typeid(e).name();
        cerr << endl << "Program Terminated..." << endl;
        return -1;
    }

    return 0;
}
