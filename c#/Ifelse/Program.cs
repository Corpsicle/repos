// See https://aka.ms/new-console-template for more information
Console.Title = "IfElse";

Console.Write( "Please enter A Number: " );
string? numInput = Console.ReadLine();
if ( !double.TryParse( numInput, out double num ) )
{
    Console.WriteLine( "Invalid number entered. Using 0." );
    num = 0;
}

Console.Write( "Thanks. Now Enter A Letter: " );
string? letterInput = Console.ReadLine();
char letter = 'A';
if ( !string.IsNullOrEmpty( letterInput ) && char.TryParse( letterInput, out char parsedLetter ) )
{
    letter = parsedLetter;
}
else
{
    Console.WriteLine( "Invalid letter entered. Using 'A'." );
}
if( num >= 6 )
{
    Console.WriteLine( "\nNumber Exceeds 5" );
    // Nested statements to be inserted here (Step 5).
    if( letter == 'C' )
    {
	Console.WriteLine( "Letter is 'C'" );
    }
}
else
{
    Console.WriteLine( "\nNumber is 5 Or Less" );
}
Console.ReadKey();

