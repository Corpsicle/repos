internal class Program
{
    private static void Main(string[] args)
    {
        Console.Title = "Input";
        Console.Write("Please Enter Yuor Name: ");
        string name = Console.ReadLine();
        Console.WriteLine("Welcome " + name + "!");
    }
}