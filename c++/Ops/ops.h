class Calculator
{
public:
    Calculator();           // (contructor) To set initial status
    void launch();          // To Display initial instructions.
    void ReadInput();       // To get expression. 
    void WriteOutput();     // To display result.
    bool run();             // (Accessor) To get current status
private:
    double num1, num2;      // To store input numbers.
    char oper;              // To store input operator.
    bool status;            // To store current statusr.
};