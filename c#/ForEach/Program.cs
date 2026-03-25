// See https://aka.ms/new-console-template for more information
Console.Title = "ForEach";

string [] websites = new string [5] {
    "Google",
    "Facebook",
    "Twitter",
    "LinkedIn",
    "Instagram"
};

Console.WriteLine( "Popular Websites..." );
int rank = 1;
foreach ( string site in websites )
{
    Console.WriteLine( $"Position: {rank}.\t{site}" );
    rank++;
}
Console.ReadKey();
