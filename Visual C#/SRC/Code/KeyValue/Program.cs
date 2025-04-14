Console.Title = "KeyValue";

Dictionary<string, string> BookList = new Dictionary<string, string>();
BookList.Add("Michael Price", "Microsoft 365");
BookList.Add("Nick Vandome", "Windows 11");
BookList.Add("Mike McGrath", "Java");

Console.WriteLine("Popular Titles...");

foreach (KeyValuePair<string, string> book in BookList)
{
    Console.WriteLine("Key: " + book.Key + "\tValue: " + book.Value + " in easy steps");
}
Console.ReadKey();
