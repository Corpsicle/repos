// See https://aka.ms/new-console-template for more information
Console.Title = "Conversion";

Console.Write("Please enter a number: ");
double num = Convert.ToDouble(Console.ReadLine());
Console.Write("Now Enter Another Number: ");
double sum = num + Convert.ToDouble(Console.ReadLine());
Console.WriteLine("Total = " + sum);