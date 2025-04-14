Console.Title = "Parameter";

double weight;
string num;

static string getWeight(out double theWeight)
{
    theWeight = 10;
    return "Ten";
}

static double lbToKg(double pounds = 5)
{ return (pounds * 0.45359237); }

static void kgToLb(ref double weight)
{ weight = (weight / 0.45359237); }

num = getWeight(out weight);
Console.WriteLine(num + " lb = " + lbToKg(weight) + " kg");
kgToLb(ref weight);
Console.WriteLine(num + " kg = " + weight + " lb");
Console.ReadKey();
