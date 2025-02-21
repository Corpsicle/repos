/* datetime.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>
#include <time.h>


int main()
{
    char buffer[100];
	time_t elapsed;
	struct tm now;

	elapsed = time(NULL);
	localtime_s(&now, &elapsed);
	asctime_s(buffer, sizeof(buffer), &now);
	printf("%s\n", buffer);
	strftime(buffer, 100, "Today is %A, %B %d.\n", &now);
	printf("%s", buffer);
	strftime(buffer, 100, "The time is %I:%M %p.\n", &now);
	printf("%s", buffer);
	return 0;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
