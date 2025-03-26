// See https://aka.ms/new-console-template for more information
Console.Title = "Logic";

bool yes = true, no = false;

Console.Write("AND Logic:");
Console.Write("\t(yes && yes): " + (yes && yes));
Console.Write("\n\t\t(yes && no): " + (yes && no));
Console.Write("\n\t\t(no && no): " + (no && no));
Console.Write("\n\nOr Logic: ");
Console.Write("\t(yes || yes): " + (yes || yes));
Console.Write("\n\t\t(yes || no): " + (yes || no));
Console.Write("\n\t\t(no || no): " + (no || no));
Console.Write("\n\nNot Logic: ");
Console.Write("\t(yes) = " + (yes));
Console.Write("\t(!yes) = " + (!yes));
Console.Write("\n\t\t(no) = " + (no));
Console.Write("\t(!no) = " + (!no));