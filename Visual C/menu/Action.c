#include <stdio.h>

void menu();
void action(int option);

static int square(int a) { return (a * a); }
static int multiply(int a, int b) { return a * b; }

void action(int option)
{
	int n1, n2;
	if (option == 1)
	{
		printf("Enter an integer to be squared: ");
		scanf_s("%d", &n1);
		printf("%d x %d = %d\n", n1, n1, square(n1));
		menu();
	}
	else if (option == 2)
	{
		printf("Enter two integers to multiply ");
		printf("separated by a space : ");
		scanf_s("%d", &n1), scanf_s("%d", &n2);
		printf("%d x %d = %d\n", n1, n2, multiply(n1, n2));
		menu();
	}
	else return;
}