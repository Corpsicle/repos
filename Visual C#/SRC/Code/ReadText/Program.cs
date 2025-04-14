Console.Title = "ReadText";

string path = "C:\\Users\\Mike_\\Desktop\\word.txt";

if (File.Exists(path))
{
    try
    {
        string text = File.ReadAllText(path);
        Console.WriteLine("File Read: " + path + "\n");
        Console.WriteLine(text + "\n");

        string[] lines = File.ReadAllLines(path);
        int num = 1;
        foreach (string line in lines)
        {
            Console.WriteLine(num + " : " + line);
            num++;
        }
    }
    catch (Exception error)
    {
        Console.WriteLine(error.Message);
    }
}
else
{
    Console.WriteLine("File Not Found: " + path);
}
Console.ReadKey();
