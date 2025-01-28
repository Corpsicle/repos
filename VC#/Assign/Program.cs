// See https://aka.ms/new-console-template for more information
Console.Title = "Assign.";

int a;
int b;

Console.Write( "Assign Values: " );
Console.Write( "\t a = " + (a = 8) );
Console.WriteLine( "\t b = " + (b = 4) );
Console.Write( "\n\nAdd & Assign: " );
Console.Write( "\t\ta += b (8 += 4)\t\t a = " + (a += b) );
Console.Write( "\n\nSubtract & Assign: " );
Console.Write( "\ta -= b (12 -= 4)\t a = " + (a -= b) );
Console.Write( "\n\nMultiply & Assign: " );
Console.Write( "\ta *= b (8 *= 4)\t\t a = " + (a *= b) );
Console.Write( "\n\nDivide & Assign: " );
Console.Write( "\ta /= b (32 /= 4)\t a = " + (a /= b) );
Console.Write( "\n\nModulus & Assign: " );
Console.Write( "\ta %= b (8 %= 4)\t\t a = " + (a %= b) + "\n" );
