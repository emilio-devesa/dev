module GradesModel;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    GradesModel.pas
    Provides the model for the grades
}

export	GradesModel = (
            setLogin,
            getLogin,
            add,
            get,
            find,
            replace,
            remove,
            getCount
);

import  Types qualified;

var     gradesList: Types.tGradesList;

procedure setLogin(var s: Types.tStudentGrades; l: Types.tPersonalInfo);
function getLogin(s: Types.tStudentGrades): Types.tPersonalInfo;
function add(student: Types.tStudentGrades): boolean;
function get(i: integer; var s: Types.tStudentGrades): boolean;
function find(login: Types.tPersonalInfo): integer;
function replace(login: Types.tPersonalInfo; student: Types.tStudentGrades): boolean;
function remove(login: Types.tPersonalInfo): boolean;
function getCount: integer;


end;


procedure setLogin;
begin
	s.login := l;
end;

function getLogin;
begin
	getLogin := s.login;
end;


{** List operations **}

function add;
begin
    if (gradesList.count < 100)
    then begin
        gradesList.count := gradesList.count + 1;
        gradesList.list[gradesList.count] := student;
        add := true;
    end
    else add := false;
end;

function get;
begin
    if (i>0) and_then (i <= gradesList.count)
    then begin
        s := gradesList.list[i];
        get := true;
    end
    else get := false;;
end;

function find;
var i: integer;
begin
    find := 0;
    if gradesList.count > 0
    then begin
        for i := 1 to gradesList.count do begin
            if gradesList.list[i].login = login
            then find := i;
        end;
    end
end;

function replace;
var i: integer;
begin
    replace := false;
    i := find(login);
    if i > 0
    then begin
        gradesList.list[i] := student;
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
        while (i < gradesList.count) do begin
            gradesList.list[i] := gradesList.list[i+1];
            i := i + 1;
        end;
        gradesList.count := gradesList.count - 1;
        remove := true;
    end;
end;

function getCount;
begin
    getCount := gradesList.count;
end;


end.