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
            loadStudents,
            saveStudents,
            newStudent
);

import  StandardOutput;
        Types qualified;
        StudentModel qualified;
        StudentView qualified;
        StudentPersistence qualified;

procedure loadStudents;
procedure saveStudents;        
procedure newStudent;

end;

procedure loadStudents;
begin
    if StudentPersistence.loadFromFile
    then writeln('Data loaded successfully')
    else writeln('Data could not be loaded');
end;

procedure saveStudents;
begin
    if StudentPersistence.saveToFile
    then writeln('Data saved successfully')
    else writeln('Data could not be saved');
end;

procedure newStudent;
var student: Types.tStudent; s: Types.tPersonalInfo;
begin
    StudentView.getFirstName(s);
    StudentModel.setFirstName(student, s);
    StudentView.getLastName(s);
    StudentModel.setLastName(student, s);
    StudentView.getLogin(s);
    StudentModel.setLogin(student, s);
    if StudentModel.add(student)
    then writeln('Student added successfully')
    else writeln('Could not add new student');
end;


end.