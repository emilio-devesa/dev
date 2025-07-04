module StudentModel;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    StudentModel.pas
    Provides the model for the students
}

export	StudentModel = (
        tStudent,
        setFirstName, setLastName, setLogin, 
        getFirstName, getLastName, getLogin,
        add, get, find, replace, remove
);

import  Shared;

type	{tPersonalInfo = String (50);}
		tStudent = record
			firstName: tPersonalInfo;
			lastName: tPersonalInfo;
			login: tPersonalInfo;
		end;
        tStudentList = record
            list: array [1..100] of tStudent;
            count: 0 .. 100;
        end;

var     studentList: tStudentList;

procedure setFirstName(var s: tStudent; n: tPersonalInfo);
procedure setLastName(var s: tStudent; n: tPersonalInfo);
procedure setLogin(var s: tStudent; l: tPersonalInfo);
function getFirstName(s: tStudent): tPersonalInfo;
function getLastName(s: tStudent): tPersonalInfo;
function getLogin(s: tStudent): tPersonalInfo;
function add(student: tStudent): boolean;
function get(l: tPersonalInfo; var s: tStudent): boolean;
function find(login: tPersonalInfo): integer;
function replace(login: tPersonalInfo; student: tStudent): boolean;
function remove(login: tPersonalInfo): boolean;

end;


procedure setFirstName;
begin
	s.firstName := n;
end;

procedure setLastName;
begin
	s.lastName := n;
end;

procedure setLogin;
begin
	s.login := l;
end;

function getFirstName;
begin
    getFirstName := s.firstName;
end;

function getLastName;
begin
    getLastName := s.lastName;
end;

function getLogin;
begin
	getLogin := s.login;
end;


{** List operations **}

function add;
begin
    if (studentList.count < 100)
    then begin
        studentList.list[studentList.count + 1] := student;
        studentList.count := studentList.count + 1;
        add := true;
    end
    else add := false;
end;

function get;
var i: integer;
begin
    get := false;
    i := find(l);
    if (i>0) and_then (i <= studentList.count)
    then begin
        s := studentList.list[i];
        get := true;
    end
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
var i: integer;
begin
    replace := false;
    i := find(login);
    if i > 0
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


end.