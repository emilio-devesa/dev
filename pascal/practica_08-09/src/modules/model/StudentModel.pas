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
            setFirstName,
            setLastName,
            setLogin,
            getFirstName,
            getLastName,
            getLogin
);

import  Definitions;

procedure setFirstName(var s: tStudent; n: tPersonalInfo);
procedure setLastName(var s: tStudent; n: tPersonalInfo);
procedure setLogin(var s: tStudent; l: tPersonalInfo);
function getFirstName(s: tStudent): tPersonalInfo;
function getLastName(s: tStudent): tPersonalInfo;
function getLogin(s: tStudent): tPersonalInfo;


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


end.