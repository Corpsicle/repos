#include <fstream>
#include <string>
#include <iostream>

using namespace std;

int main()
{
    string info = "\n\tThe Ballard of Reading Gaol";
    info.append( "\n\t\t\tOscar Wilde 1898" );

    ofstream writer( "poem.txt", ios::app );
    if ( !writer )
    {
        cout << "Error opening file for output." << endl;
        return -1;              // Exit with error code
    }
    writer << info << endl;     // Append info to the file
    writer.close();             // Close the file stream

    return 0;
}
