#include <fstream>      // for file handling support
#include <string>       // for string support   
#include <iostream>

using namespace std;

int main()
{
    string line;
    int i;

    ifstream reader( "poem.txt" );
    if ( !reader )
    {
        cerr << "Error opening file!" << endl;
        return -1;      // Signal an error condition then exit the program
    }
    else
    for (i = 0; !reader.eof(); i++)
    {
        getline( reader, line );
        cout << line << endl;   
    }
    reader.close();
    return 0;
}