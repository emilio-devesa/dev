module GradesModel;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    GradesModel.pas
    Provides the model for the grades
}

export	GradesModel = (
            setLogin,
            getLogin,
            setExamRecord,
            getExamRecord
);

import  Definitions;

procedure setLogin(var s: tStudentGrades; l: tPersonalInfo);
function getLogin(s: tStudentGrades): tPersonalInfo;
procedure setExamRecord(var s: tStudentGrades; idx: integer; rec: tExamRecord);
function getExamRecord(s: tStudentGrades; idx: integer): tExamRecord;


end;


procedure setLogin;
begin
	s.login := l;
end;

function getLogin;
begin
	getLogin := s.login;
end;

procedure setExamRecord;
begin
    s.grades[idx] := rec;
end;

function getExamRecord;
begin
    getExamRecord := s.grades[idx];
end;


end.