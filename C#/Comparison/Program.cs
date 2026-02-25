// See https://aka.ms/new-console-template for more information
Console.Title = "Comparison";

int nil = 0, num = 0, max = 1;
char cap = 'A', low = 'a';

Console.Write( "Equality:" );
Console.Write( "\t ( 0 == 0 ) : " + ( nil == num ) );
Console.Write( "\n\t\t ( A == a ) : " + ( cap == low ) );

Console.Write( "\n\nInequality:" );
Console.Write( "\t ( 0 != 1 ) :  " + ( nil != max ) );

Console.Write( "\n\nGreater Than:" );
Console.Write( "\t  ( 0 > 1 ) :  " + ( nil > max ) );

Console.Write( "\nLess Than: " );
Console.Write( "\t  ( 0 < 1 ) : " + ( nil < max ) );

Console.Write( "\n\nGreater/Equal:" );
Console.Write( "\t ( 0 >= 0 ) :  " + ( nil >= num ) );

Console.Write( "\nLess or Equal: " );
Console.Write( "\t ( 1 <= 0 ) :  " + ( max <= nil ) + "\n" );

Console.ReadKey();

