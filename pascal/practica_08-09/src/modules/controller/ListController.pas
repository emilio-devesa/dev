module ListController;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    ListController.pas
    Provides the controller for lists
}

export	ListController = (
            listStudentsAlphabetically
);

import  Definitions;
        StudentListModel qualified;
        StudentModel qualified;
        StudentView qualified;
        ListSort;

procedure listStudentsAlphabetically(var origin: tStudentList);

end;


procedure listStudentsAlphabetically;
var list: tStudentList;
    s: tStudent;
    i: integer;
begin
    ListSort.sortStudents(origin, list);
    for i := 1 to StudentListModel.getCount(list) do begin
        if StudentListModel.get(list, i, s)
        then StudentView.print(StudentModel.getFirstName(s),
                               StudentModel.getLastName(s),
                               StudentModel.getLogin(s)
                              );
    end;
end;


end.