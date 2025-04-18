﻿Console.Title = "Joined";

string[] a = new string[3] { "Alpha", "Bravo", "Charlie" };

string s = String.Concat(a[0], a[1]);
Console.WriteLine("Concatenated:\t" + s);

s = String.Join(" ", a[0], a[1]);
Console.WriteLine("Joined:\t\t" + s);

s = String.Join("<br>", a);
Console.WriteLine("\nHTML:\t" + s + "\n");

int num = String.Compare(a[0], a[1]);
Console.WriteLine(a[0] + " v " + a[1] + ":\t" + num);

num = String.Compare(a[2], a[1]);
Console.WriteLine(a[2] + " v " + a[1] + ":" + num);

num = a[1].CompareTo(a[1]);
Console.WriteLine(a[1] + " v " + a[1] + " : " + num + "\n");

bool flag = (a[0] == a[1]);
Console.WriteLine(a[0] + " == " + a[1] + ":\t\t" + flag);
flag = a[2].Equals(a[2]);
Console.WriteLine(a[2] + " == " + a[2] + ":\t" + flag);
Console.ReadKey();
