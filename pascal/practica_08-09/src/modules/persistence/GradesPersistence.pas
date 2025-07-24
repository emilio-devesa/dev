module GradesPersistence;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    GradesPersistence.pas
    Provides file persistence for the grades list using a binary file.
}

export  GradesPersistence = (
            loadFromFile,
            saveToFile
);

import  StandardInput;
        StandardOutput;
        Definitions;
        GradesListModel qualified;


const   dataFileName = '.grades';

type    tFile = bindable file of tStudentGrades;

function loadFromFile (var list: tGradesList): boolean;
function saveToFile (var list: tGradesList): boolean;

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
    studentGrades: tStudentGrades;
begin
    if fileExists(f, dataFileName) and_then fileIsBound(f, dataFileName)
    then begin
        reset(f);
        loadFromFile := true;
        while not eof(f) do begin
            read(f, studentGrades);
            if not GradesListModel.add(list, studentGrades)
            then loadFromFile := false;
        end;
    end
    else loadFromFile := false;
end;

function saveToFile;
var f: tFile;
    i, n: integer;
    studentGrades: tStudentGrades;
    success: boolean value true;
begin
    if fileIsBound(f, dataFileName)
    then begin
        rewrite(f);
        n := GradesListModel.getCount(list);
        for i := 1 to n do begin
            success := success and GradesListModel.get(list, i, studentGrades);
            write(f, studentGrades);
        end;
        saveToFile := success;
    end
    else saveToFile := false;
end;


end.