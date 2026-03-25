// See https://aka.ms/new-console-template for more information
Console.Title = "KeyValue";

Dictionary< string, string > BookList = 
        new Dictionary < string, string > ();
BookList.Add( "Stuart Yarnold", "Arduino" );
BookList.Add( "Nick Vandome", "Windows 10" );
BookList.Add( "Mike McGrath", "Java" );
Console.WriteLine( "Popular Titles..." );
foreach ( KeyValuePair < string, string > book in BookList )
{
    Console.WriteLine( "Key: " + book.Key + "\tValue: " + book.Value + " in easy steps" );
}
Console.ReadLine();
