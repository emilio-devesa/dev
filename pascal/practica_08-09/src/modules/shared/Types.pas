module Types;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    Types.pas
    Provides common types
}

export Types = (
        tPersonalInfo,
        tStudent,
        tStudentList,
        tExamPeriod,
        tGrade,
        tExamRecord
);


type    tPersonalInfo = String (50);

        tStudent = record
			firstName: tPersonalInfo;
			lastName: tPersonalInfo;
			login: tPersonalInfo;
		end;
        
        tStudentList = record
            list: array [1 .. 100] of tStudent;
            count: integer value 0;
        end;

        tGrade = record
            val: real value 0.0;
            passedIn: char value ' ';  { 'f', 'j', 's', 'd', ' ' }
        end;

        tExamRecord = record
            theory: tGrade;
            practice: tGrade;
            global: real value 0.0;
        end;

        tExamPeriod = (epFebruary, epJune, epSeptember, epDecember);

        tStudentGrades = record
            login: tPersonalInfo;
            grades: array [tExamPeriod] of tExamRecord;
        end;

        tGradesList = record
            list: array [1 .. 100] of tStudentGrades;
            count: integer value 0
        end;


end;


end.