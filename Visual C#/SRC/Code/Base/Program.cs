Console.Title = "Base";

Daughter anna = new Daughter();
Son brad = new Son();
Son carl = new Son(100);
Console.ReadKey();

public class Parent
{
    public Parent()
    {
        Console.WriteLine("Parent Called");
    }

    public Parent(int num)
    {
        Console.WriteLine("Parent+ Called: " + num);
    }
}

public class Daughter : Parent
{
    public Daughter()
    { Console.WriteLine("\tDaughter Called\n"); }
}

public class Son : Parent
{
    public Son()
    { Console.WriteLine("\tSon Called\n"); }

    public Son(int num) : base(num)
    { Console.WriteLine("\tSon+ Called: " + num); }
}
