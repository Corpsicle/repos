// See https://aka.ms/new-console-template for more information
Console.Title = "Input";

Console.Write( "Please enter your name: " );
string name = Console.ReadLine() ?? string.Empty;
Console.WriteLine( $"Welcome {name}!" );
Console.ReadKey();
