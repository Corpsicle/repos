// See https://aka.ms/new-console-template for more information
Console.Title = "Cast";

double num = 10.5;
int integer = 2;

num = num + integer;
Console.WriteLine( "Implicite Cast: " + num);
num = (double) 7 / integer;
Console.WriteLine("Explicite Cast: " + num);
char letter = (char)65;
Console.WriteLine("Cast integer: " + letter);
int ascii = (int) 'A';
Console.WriteLine("Cast char: " + ascii);
