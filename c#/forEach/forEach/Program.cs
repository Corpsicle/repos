// See https://aka.ms/new-console-template for more information
Console.Title = "ForEach";
string[] websites = new string[ 5 ] { "Google", "Facebook", "Twitter", "Instagram", "LinkedIn" };
Console.WriteLine( "Popular Websites:" );
int rank = 1;
foreach ( string site in websites )
{
    Console.WriteLine( $"position: {rank}.\t {site}" );
    rank++;
}
Console.ReadKey();

