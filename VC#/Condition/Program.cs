// See https://aka.ms/new-console-template for more information
Console.Title = "Condition";

int a = 8;
int b = 3;

string verb = (a != 1) ? "are" : "is";
Console.Write("There " + verb + " " + a + "\n");
string parity = (a % 2 == 0) ? "Odd": "Even";
Console.Write( a + " is " + parity + "\n");
parity = (b % 2 == 0) ? "Odd" : "Even";
Console.Write(b + " is " + parity );
int max = (a > b) ? a : b;
Console.Write("\nMaximum is " + max + "\n");

