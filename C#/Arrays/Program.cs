// See https://aka.ms/new-console-template for more information
Console.Title = "Arrays";

string [] cars = new string[ 3 ] { "BMW", "Ford", "Opel" };
int [ , ] coords = new int[ 2,3 ] { { 1, 2, 3 }, { 4, 5, 6 } };

Console.WriteLine( "Second Car: " + cars[ 1 ] );
Console.WriteLine( "X1:Y1: " + coords[ 0, 0 ] );
Console.WriteLine( "X2:Y2: " + coords[ 1, 2 ] );

Console.ReadKey();

