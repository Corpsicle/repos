// See https://aka.ms/new-console-template for more information
Console.Title = "Variables";

char letter;	letter = 'A';	// Declared then initialized.
int number;	number = 100;	// Declared then initialized.
float body = 98.6f;		// Declared and initialized.
double pi = 3.14159;		// Declared and initialized.
decimal sum = 1000.00m;		// Declared and initialized.
bool flag = false;		// Declared and initialized.
string text = "C# is fun";	// Declared and initialized.

Console.WriteLine( "Char letter:\t" + letter );
Console.WriteLine( "int number:\t" + number );
Console.WriteLine( "float body:\t" + body );
Console.WriteLine( "Double pi:\t" + pi );
Console.WriteLine( "Decimal sum:\t" + sum );
Console.WriteLine( "bool flag:\t" + flag );
Console.WriteLine( "string text:\t" + text );
Console.ReadKey();
