internal class Program
{
    enum Days { Sun, Mon, Tue, Wed, Thu, Fri, Sat };
    private static void Main(string[] args)
    {
        const double pi = 3.14159265358979;
        var daysType = typeof(Days);
        Console.WriteLine( "Pi Type: " + pi.GetType() );
        Console.WriteLine( "Circumference: " + (pi * 3) );
        Console.WriteLine( "\nFirst Name: " + Days.Sat );
        Console.WriteLine( "T1st Index: " + (int) Days.Sat );
        string name = Enum.GetName( daysType, 1 );
        Console.WriteLine("\n2nd Index: " + name );
        bool flag = Enum.IsDefined(daysType, "Mon" );
        Console.WriteLine("Contains Mon?: " + flag );
        }
}