#include <iostream>

using namespace std;

int main()
{
    // Program code goes here
    int i, j;
    for ( i = 1; i < 4; i++)
    {
        cout << "Iteration: " << i << endl;
        for ( j = 1; j < 4; j++)
        {
            cout << "Inner iteration: " << j << endl;
        }
    }

    return 0;
}