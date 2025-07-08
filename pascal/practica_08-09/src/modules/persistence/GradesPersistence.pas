module GradesPersistence;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    GradesPersistence.pas
    Provides file persistence for the grades list using a binary file.
}

export  GradesPersistence = (
            loadFromFile,
            saveToFile
);

import  StandardInput;
        StandardOutput;
        Types qualified;
        GradesModel qualified;


const   dataFileName = '.grades';

type    tFile = bindable file of Types.tStudentGrades;

function loadFromFile: boolean;
function saveToFile: boolean;

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
    s: Types.tStudentGrades;
begin
    if fileExists(f, dataFileName) and_then fileIsBound(f, dataFileName)
    then begin
        reset(f);
        loadFromFile := true;
        while not eof(f) do begin
            read(f, s);
            if not GradesModel.add(s)
            then loadFromFile := false;
        end;
    end
    else loadFromFile := false;
end;

function saveToFile;
var f: tFile;
    i, n: integer;
    s: Types.tStudentGrades;
    success: boolean value true;
begin
    if fileIsBound(f, dataFileName)
    then begin
        rewrite(f);
        n := GradesModel.getCount;
        for i := 1 to n do begin
            success := success and GradesModel.get(i, s);
            write(f, s);
        end;
        saveToFile := success;
    end
    else saveToFile := false;
end;


end.