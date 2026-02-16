Program sizeof;

uses
        SysUtils;

var
	SHORT_INT: shortint;
	LONG_INT: longint;

begin
	writeln( 'short int ...     size: ', sizeOf(SHORT_INT) );
	writeln( 'Long int ...      size: ', sizeOf(LONG_INT) );
end.

