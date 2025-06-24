program Main;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/
}

import
    StandardInput;
    StandardOutput;
    ConfigurationController qualified;


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
    writeln;
    write('Press ENTER to continue...');
    readln;
end;


{** Menus' logics **}

function mainMenu: integer;
var option: integer;
begin
    repeat
        writeln;
        writeln('MAIN MENU');
        writeln('1. New student');
        writeln('2. Update student');
        writeln('3. Update grades');
        writeln('4. Lists');
        writeln('5. Change configuration');
        writeln('0. Quit');
        write('Option?: ');
        readln(option);
        if (option < 0) or (5 < option)
        then writeln('Invalid option');
        mainMenu := option;
    until (0 <= option) and (option <= 5);
end;

function submenuLists: integer;
var option: integer;
begin
    repeat
        writeln;
        writeln('LISTS:');
        writeln('1. List students alphabetically');
        writeln('2. List students alphabetically and their season grades');
        writeln('3. List students and their season grades in descending order');
        writeln('0. Back');
        write('Option?: ');
        readln(option);
        if (option < 0) or (3 < option)
        then writeln('Invalid option');
        submenuLists := option;
    until (0 <= option) and (option <= 3);
end;


{** Operations **}

function start(option: integer): integer;
begin
    case (option) of
        1: { New Student };
        2: { Update Student };
        3: { Update grades };
        4: case (submenuLists) of
                1: { List students alphabetically };
                2: { List students alphabetically and their Season Grades };
                3: { List students and their season grades descendentally sorted };
                0: { Return };
            end;
        5: ConfigurationController.change;
        0: { Exit };
    end;
    start := option;
end;

begin
    ClearScreen;
    writeln('============================');
    writeln('  STUDENT GRADE MANAGER');
    writeln('============================');
    ConfigurationController.load;
	repeat
    until (start(mainMenu) = 0);
    WaitForEnter;
end.