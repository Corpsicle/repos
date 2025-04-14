Console.Title = "Overload";

double num;
double area;
Compute size = new();

Console.Write("Please Enter Dimension In Feet: ");
num = Convert.ToDouble(Console.ReadLine());

area = size.Zone(num);
Console.WriteLine("\nCircle:\t\tArea = " + area + " sq.ft.");

area = size.Zone(num, num);
Console.WriteLine("Square:\t\tArea = " + area + " sq.ft.");

area = size.Zone(num, num, 'T');
Console.WriteLine("Triangle:\tArea = " + area + " sq.ft.");
Console.ReadKey();

class Compute
{
    public double Zone(double width)
    {
        double radius = width / 2;
        return ((radius * radius) * 3.141593);
    }

    public double Zone(double width, double height)
    {
        return (width * height);
    }

    public double Zone(double width, double height, char letter)
    {
        return ((width / 2) * height);
    }
}