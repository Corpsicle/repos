// See https://aka.ms/new-console-template for more information
using System.Globalization;

Console.Title = "Conversion";

static double ReadDouble(string prompt)
{
	while (true)
	{
		Console.Write(prompt);
		string? input = Console.ReadLine();
		if (input is null)
		{
			throw new OperationCanceledException("No input provided.");
		}

		input = input.Trim();
		if (string.Equals(input, "q", StringComparison.OrdinalIgnoreCase))
			throw new OperationCanceledException("User cancelled.");

		if (double.TryParse(input, NumberStyles.Float | NumberStyles.AllowThousands, CultureInfo.CurrentCulture, out double value))
			return value;

		Console.WriteLine("Invalid number — please try again or enter 'q' to quit.");
	}
}

try
{
	double number = ReadDouble("Please enter a number: ");
	double other = ReadDouble("Now enter another number: ");
	double sum = number + other;
	Console.WriteLine("Total = " + sum.ToString(CultureInfo.CurrentCulture));
}
catch (OperationCanceledException)
{
	Console.WriteLine("Operation cancelled.");
}
catch (Exception ex)
{
	Console.WriteLine("An error occurred: " + ex.Message);
}

if (!Console.IsInputRedirected && !Console.IsOutputRedirected)
{
	Console.WriteLine("Press any key to exit...");
	Console.ReadKey();
}
