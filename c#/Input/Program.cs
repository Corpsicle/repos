#nullable enable

// See https://aka.ms/new-console-template for more information
Console.Title = "Input";

Console.Write("Please enter your name: ");
string? input = Console.ReadLine();

if (string.IsNullOrWhiteSpace(input))
{
    Console.WriteLine("Error: Name cannot be empty.");
    Console.ReadKey();
    return;
}

string name = input.Trim();
Console.WriteLine($"Welcome {name}!");
Console.ReadKey();
