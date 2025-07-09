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
            getLogin
);

import  Types qualified;

procedure setLogin(var s: Types.tStudentGrades; l: Types.tPersonalInfo);
function getLogin(s: Types.tStudentGrades): Types.tPersonalInfo;


end;


procedure setLogin;
begin
	s.login := l;
end;

function getLogin;
begin
	getLogin := s.login;
end;


end.