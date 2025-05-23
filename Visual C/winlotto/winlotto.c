/* lotto.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <Windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

static int WINAPI winMain(
  _In_ HINSTANCE hinstance,
  _In_opt_ HINSTANCE hPrevinstance,
  _In_ LPSTR lpCmdLine,
  _In_ int nCmdShow
)
{
  int i = 0, r = 0, temp = 0, nums[60] = { 0 };
  char buf[4], str[100] = { "Your lucky numbers are: " };
  wchar_t wstr[100];
  size_t convertedChars = 0;
  srand((unsigned int)time(NULL));
  for (i = 0; i < 60; i++) { nums[i] = i; }
  for (i = 0; i < 60; i++) {
      r = (rand() % 59) + 1;
      temp = nums[i];
      nums[i] = nums[r];
      nums[r] = temp;
  }
  for (i = 0; i < 7; i++) {
      sprintf_s(buf, sizeof(buf), "%d", nums[i]);
      strcat_s(buf, sizeof(buf), " ");
      strcat_s(str, sizeof(str), buf);
  }
  mbstowcs_s(&convertedChars, wstr, sizeof(wstr) / sizeof(wstr[0]), str, _TRUNCATE);
  MessageBox(NULL, wstr, L"Lotto Number Picker", MB_OK | MB_ICONEXCLAMATION);
  return 0;
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
 Debug program: F5 or Debug > Start Debugging menu */

 /* Tips for Getting Started :
      1. Use the Solution Explorer window to add/manage files
      2. Use the Team Explorer window to connect to source control
      3. Use the Output window to see build output and other messages
      4. Use the Error List window to view errors
      5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
      6. In the future, to open this project again, go to File > Open > Project and select the .sln file
 */