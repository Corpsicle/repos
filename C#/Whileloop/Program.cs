// See https://aka.ms/new-console-template for more information
Console.Title = "WhileLoop";

int [] nums = new int[ 10 ];
int i = 0;

while( i < nums.Length )
{
    nums[ i ] = i;
    Console.Write($" | { nums[ i ] }" );
    i++;
}
Console.Write( "\n\n" );

do
{
    i--;

    Console.Write($" | { nums[ i ] }" );
}
while( i > 0 );
Console.ReadKey();
