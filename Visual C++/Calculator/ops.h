#pragma once
class Calculator
{
public:
	Calculator();				// (Constructor) To set initial status.
	void launch();				// To display initial instructions.
	void readInput();			// To get expressions.
	void writeOutput();			// To display result.
	bool run();					// (Accessor) To get current status.
private:
	double num1, num2;			// To store input numbers.
	char oper;					// To store input operator.
	bool status;				// To store current status.
};