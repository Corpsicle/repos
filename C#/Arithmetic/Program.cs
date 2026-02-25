// See https://aka.ms/new-console-template for more information
Console.Title = "Arithmetic";

int a = 8;
int b = 4;

Console.WriteLine( "Addition:\t: " + ( a + b ) );
Console.WriteLine( "Subtraction:\t: " + ( a - b ) );
Console.WriteLine( "Multiplication:\t: " + ( a * b ) );
Console.WriteLine( "Division:\t: " + ( a / b ) );
Console.WriteLine( "Modulus:\t: " + ( a % b ) );

Console.WriteLine( "\nPostfix:\t\t: " + ( a++ ) );
Console.WriteLine( "Postfix Result.....\t: " + a );

Console.WriteLine( "\nPrefix:\t\t\t: " + ( ++b ) );
Console.WriteLine( "Prefix Result.....\t: " + b );
Console.ReadKey();

