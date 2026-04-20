#include <iostream>

using namespace std;

void writeOutput(int&);
void computeTriple(int&);

int main()
{
    int num = 5;
    int& ref =num; // ref is a reference to num

    writeOutput(ref); // Output: Current value: 5
    ref += 15; // Modify num through the reference
    writeOutput(ref); // Output: Current value: 20
    computeTriple(ref); // Triple the value of num through the reference
    writeOutput(ref); // Output: Current value: 60

    return 0;
}

void writeOutput(int& value)
{
    cout << "Current value: " << value << endl;
}

void computeTriple(int& value)
{
    value *= 3; // Triple the value
}
