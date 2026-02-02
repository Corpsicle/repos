#include <stdio.h>
#include <stdlib.h>

// Function to convert Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
    return (celsius * 9.0 / 5.0) + 32.0;
}

// Function to convert Fahrenheit to Celsius
double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32.0) * 5.0 / 9.0;
}

int main() {
    int choice;
    double temp, converted;

    printf("Temperature Conversion Program\n");
    printf("1. Celsius to Fahrenheit\n");
    printf("2. Fahrenheit to Celsius\n");
    printf("Enter your choice (1 or 2): ");

    // Validate menu choice
    if (scanf("%d", &choice) != 1 || (choice != 1 && choice != 2)) {
        printf("Invalid choice. Please enter 1 or 2.\n");
        return 1;
    }

    printf("Enter temperature value: ");
    if (scanf("%lf", &temp) != 1) {
        printf("Invalid temperature input.\n");
        return 1;
    }

    // Perform conversion based on choice
    if (choice == 1) {
        converted = celsiusToFahrenheit(temp);
        printf("%.2lf °C = %.2lf °F\n", temp, converted);
    } else {
        converted = fahrenheitToCelsius(temp);
        printf("%.2lf °F = %.2lf °C\n", temp, converted);
    }

    return 0;
}
