module StudentView;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    StudentView.pas
    Provides the view for printing or reading a student's personal information
}

export	StudentView = (
        getFirstName,
        getLastName,
        getLogin
);

import  StandardInput;
        StandardOutput;
        Shared;

procedure getFirstName(var s: tPersonalInfo);
procedure getLastName(var s: tPersonalInfo);
procedure getLogin(var s: tPersonalInfo);

end;


procedure getFirstName;
begin
    write('Enter first name: ');
    readln(s);
end;

procedure getLastName;
begin
    write('Enter last name: ');
    readln(s);
end;

procedure getLogin;
begin
    write('Enter login: ');
    readln(s);
end;

end.