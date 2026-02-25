using System;

namespace Constant
{
	enum Days { Sat, Sun, Mon, Tue, Wed, Thu, Fri }

	class Program
	{
		static void Main()
		{
			const double pi = 3.1459265358979;

			var daysType = typeof(Days);
			Console.Title = "Constant";
			Console.WriteLine("Pi Type: " + pi.GetType());
			Console.WriteLine("Circumference: " + (pi * 3));
			Console.WriteLine("\nFirst Name: " + Days.Sat);
			Console.WriteLine("1st Index: " + (int)Days.Sat);

			string? name = Enum.GetName(daysType, 1);
			Console.WriteLine("\n2nd Index: " + name);
			bool flag = Enum.IsDefined(daysType, "Mon");
			Console.WriteLine("Contains Mon?: " + flag);
			Console.ReadKey();
		}
	}
}
