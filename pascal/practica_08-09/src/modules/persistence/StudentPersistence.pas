module StudentPersistence;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    StudentPersistence.pas
    Provides file persistence for the student list using a binary file.
}

export  StudentPersistence = (
        loadFromFile,
        saveToFile
);

import  StandardInput;
        StandardOutput;
        Definitions;
        StudentModel qualified;
        StudentListModel qualified;


const   dataFileName = '.students';

type    tFile = bindable file of tStudent;

function loadFromFile (var list: tStudentList): boolean;
function saveToFile (var list: tStudentList): boolean;

end;


function fileExists(var f: tFile; filename: String): boolean;
var b: bindingtype;
begin
    unbind(f);
    b := binding(f);
    b.name := filename;
    bind(f, b);
    b := binding(f);
    fileExists := b.existing;
end;

function fileIsBound(var f: tFile; filename: String): boolean;
var b: bindingtype;
begin
    unbind(f);
    b := binding(f);
    b.name := filename;
    bind(f, b);
    b := binding(f);
    fileIsBound := b.bound;
end;


function loadFromFile;
var f: tFile;
    s: tStudent;
begin
    if fileExists(f, dataFileName) and_then fileIsBound(f, dataFileName)
    then begin
        reset(f);
        loadFromFile := true;
        while not eof(f) do begin
            read(f, s);
            if not StudentListModel.add(list, s)
            then loadFromFile := false;
        end;
    end
    else loadFromFile := false;
end;

function saveToFile;
var f: tFile;
    i, n: integer;
    s: tStudent;
    success: boolean value true;
begin
    if fileIsBound(f, dataFileName)
    then begin
        rewrite(f);
        n := StudentListModel.getCount(list);
        for i := 1 to n do begin
            success := success and StudentListModel.get(list, i, s);
            write(f, s);
        end;
        saveToFile := success;
    end
    else saveToFile := false;
end;


end.