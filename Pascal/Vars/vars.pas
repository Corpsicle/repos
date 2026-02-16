program vars;

const
	Pi = 3.1415926536;

var
    	number: integer;
    
begin
    number := 100;

    writeln('Integer is: ', number);
    writeln('Values are ',number, ' and ', Pi:0:10);
    writeln('The value of pi is: ', pi:0:7);
    writeln('number:0:7 displays: ', number:7);
    writeln('number:10:0 displays: ', number:10);
    writeln('Pi is approximately: ', pi:1:10);
    writeln('Right aligned rounded pi: ', pi:20:3);
    writeln('Left aligned rounded pi: ', pi:-20:3);
end.
