Console.Title = "WriteStream";

string path = "C:\\Users\\Mike_\\Desktop\\robert.txt";
string[] poem = new string[]
{
                "\tThis truth finds honest Tam o' Shanter" ,
                "\tAs he from Ayr one night did canter" ,
                "\tOld Ayr, which never a town surpasses",
                "\tFor honest men and bonny lasses."
};
string attrib = "\n\tTam o' Shanter (Robert Burns 1790)";

try
{
    using (StreamWriter writer = new StreamWriter(path))
    {
        foreach (string line in poem)
        { writer.WriteLine(line); }
    }

    using (StreamWriter writer = new StreamWriter(path, true))
    {
        writer.WriteLine(attrib);
        Console.WriteLine("File Written: " + path);
    }
}
catch (Exception error)
{ Console.WriteLine(error.Message); }
Console.ReadKey();
