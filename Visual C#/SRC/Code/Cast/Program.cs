﻿Console.Title = "Cast";

double num = 10.5;
int integer = 2;

num = num + integer;
Console.WriteLine("Implicit Cast: " + num);

num = (double)7 / integer;
Console.WriteLine("Explicit Cast: " + num);

char letter = (char)65;
Console.WriteLine("Cast Integer: " + letter);

int unicode = (int)'A';
Console.WriteLine("Cast Letter: " + unicode);
Console.ReadKey();
