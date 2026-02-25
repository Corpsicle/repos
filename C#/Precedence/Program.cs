// See https://aka.ms/new-console-template for more information
Console.Title = "Precedence";

int sum;

sum = 1 + 4 * 3;
Console.Write($"Default Order:\t\t{sum}" );
sum = ( 1 + 4 ) * 3;
Console.Write($"\nForced Order:\t\t{sum}\n" );
sum = 7 - 4 + 2;
Console.Write($"\nDefault Direction:\t{sum}" );
sum = 7 - ( 4 + 2 );
Console.Write($"\nForced Direction:\t{sum}\n" );
Console.ReadKey();

