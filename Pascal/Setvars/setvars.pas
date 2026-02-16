Program setvar;

uses SysUtils;	(* Required for IntToHex *)

var
    letter: char;
    num1, num2: integer;
    letterPtr: ^Longint; (* Pointer to a long integer *)

begin
    write('Enter a letter: ');
    readln(letter);
    letterPtr := @letter; (* Store the address of letter in LetterPtr *)

    write('Enter first number: ');
    readln(num1);
    
    write('Enter second number: ');
    readln(num2);
    
    writeln('You entered letter: ', letter);
    writeln('You entered numbers: ', num1, ' and ', num2);
    writeln('Letter: ', letter, ' Stored at: ', IntToHex(letterPtr^) );
end.
