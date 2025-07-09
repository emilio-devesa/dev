module Definitions;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    Definitions.pas
    Provides definitions for constants and types
}

export  Definitions = (
            MAX_ITEMS,
            tPersonalInfo,
            tStudent,
            tStudentList,
            tExamPeriod,
            tGrade,
            tExamRecord
);

const   MAX_ITEMS = 100;

type    tPersonalInfo = String (50);

        tStudent = record
			firstName: tPersonalInfo;
			lastName: tPersonalInfo;
			login: tPersonalInfo;
		end;
        
        tStudentList = record
            item: array [1 .. MAX_ITEMS] of tStudent;
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
            list: array [1 .. MAX_ITEMS] of tStudentGrades;
            count: integer value 0
        end;


end;


end.