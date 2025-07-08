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
        tStudentList
);


type    tPersonalInfo = String (50);

        tStudent = record
			firstName: tPersonalInfo;
			lastName: tPersonalInfo;
			login: tPersonalInfo;
		end;
        
        tStudentList = record
            list: array [1..100] of tStudent;
            count: integer value 0;
        end;


end;


end.