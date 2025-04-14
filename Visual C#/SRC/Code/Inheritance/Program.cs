Console.Title = "Inheritance";

Rectangle rect = new Rectangle();
Triangle cone = new Triangle();

rect.setValues(4, 5);
cone.setValues(4, 5);

Console.WriteLine("Rectangle Area: " + rect.area());
Console.WriteLine("\nTriangle Area: " + cone.area());
Console.ReadKey();

public class Polygon
{
    protected int width, height;

    public void setValues(int width, int height)
    {
        this.width = width;
        this.height = height;
    }
}

public class Rectangle : Polygon
{
    public int area() { return (width * height); }
}

public class Triangle : Polygon
{
    public int area() { return ((width * height) / 2); }
}
