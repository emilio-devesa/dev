module StudentController;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    StudentController.pas
    Provides the controller for the student model
}

export	StudentController = (
        newStudent
);

import  StandardOutput;
        Shared;
        StudentModel qualified;
        StudentView qualified;
        
procedure newStudent;

end;


procedure newStudent;
var student: StudentModel.tStudent; s: tPersonalInfo;
begin
    StudentView.getFirstName(s);
    StudentModel.setFirstName(student, s);
    StudentView.getLastName(s);
    StudentModel.setLastName(student, s);
    StudentView.getLogin(s);
    StudentModel.setLogin(student, s);
    if StudentModel.add(student) and_then (StudentModel.get(s, student))
    then writeln('Student added successfully: ', StudentModel.getFirstName(student))
    else writeln('Could not add new student');
end;


end.