#include <iostream>

/* print Fahrenheit-Celsius table
   for fahr = 0, ... 300; floating point version */

int main()
{
  float fahr, celsius;
  int lower, upper, step;

  lower = 0;    /* lower limit of temperature table */
  upper = 300;  /* upper limit */
  step = 20;    /* step size */

  std::cout << "Fahrenheit    Celsius" << std::endl;
  fahr = lower;
  while (fahr <= upper) {
    celsius = (5.0 /9.0) * (fahr - 32.0);
    std::cout << fahr << " " << celsius << std::endl;
    fahr = fahr + step;
  }

  return 0;
}
