module Operations;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    Operations.pas
    Provides common operations
}


export  Operations = (
            ClearScreen,
            WaitForEnter,
            getTerminalHeight
);


import  StandardInput;
        StandardOutput;


procedure ClearScreen;
procedure WaitForEnter;
function getTerminalHeight: integer;

end;


{** Output text user interface operations **}

{ Clears screen using ANSI escape code }
procedure ClearScreen;
begin
    write(chr(27)+'[2J');  (* Clear screen *)
    write(chr(27)+'[H');   (* Move cursor to top-left *)
end;

{ Pause and wait for user to press ENTER }
procedure WaitForEnter;
begin
    write('Press ENTER to continue...');
    readln;
end;

function getTerminalHeight;
var f: text;
    rows, cols: integer;
    b: bindingtype;
begin
    unbind(f);
    b := binding(f);
    b.name := 'stty size |';
    bind(f, b);
    b := binding(f);
    reset(f);
    read(f, rows, cols);
    getTerminalHeight := rows;
end;



end.