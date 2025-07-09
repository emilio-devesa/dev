module StudentListModel;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    StudentListModel.pas
    Provides the model for the student list
}

export	StudentListModel = (
            add,
            get,
            find,
            replace,
            remove,
            getCount
);

import  Types qualified;

var     studentList: Types.tStudentList;

function add(student: Types.tStudent): boolean;
function get(i: integer; var s: Types.tStudent): boolean;
function find(login: Types.tPersonalInfo): integer;
function replace(i: integer; student: Types.tStudent): boolean;
function remove(login: Types.tPersonalInfo): boolean;
procedure clone(var origin, target: Types.tStudentList);
function getCount: integer;


end;


function add;
begin
    if (studentList.count < 100)
    then begin
        studentList.count := studentList.count + 1;
        studentList.list[studentList.count] := student;
        add := true;
    end
    else add := false;
end;

function get;
begin
    if (i>0) and_then (i <= studentList.count)
    then begin
        s := studentList.list[i];
        get := true;
    end
    else get := false;;
end;

function find;
var i: integer;
begin
    find := 0;
    if studentList.count > 0
    then begin
        for i := 1 to studentList.count do begin
            if studentList.list[i].login = login
            then find := i;
        end;
    end
end;

function replace;
begin
    replace := false;
    if (i > 0) and (i <= studentList.count)
    then begin
        studentList.list[i] := student;
        replace := true;
    end;
end;

function remove;
var i: integer;
begin
    remove := false;
    i := find(login);
    if i > 0
    then begin
        while (i < studentList.count) do begin
            studentList.list[i] := studentList.list[i+1];
            i := i + 1;
        end;
        studentList.count := studentList.count - 1;
        remove := true;
    end;
end;

procedure clone;
var i: integer;
begin
    target.count := origin.count;
    if origin.count > 0
    then for i := 1 to origin.count do target.list[i] := origin.list[i];
end;

function getCount;
begin
    getCount := studentList.count;
end;


end.