module ConfigurationController;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    ConfigurationController.pas
    Provides a controller for configuration values
}

export  ConfigurationController = (
            load,
            save,
            change
);

import  StandardInput;
        StandardOutput;
        ConfigurationModel qualified;
        ConfigurationView qualified;
        ConfigurationPersistence qualified;

procedure load;
procedure save;
procedure change;

end;


procedure load;
begin
    if (ConfigurationPersistence.loadFromFile)
    then ConfigurationView.show(ConfigurationModel.getSaveTheory, ConfigurationModel.getSavePractice)
    else change;
end;

procedure save;
begin
    if (ConfigurationPersistence.saveToFile)
    then writeln('Saved preferences in configuration file')
    else writeln('ERROR: Can´t save preferences in configuration file');
end;

procedure change;
var saveTheory, savePractice: boolean;
begin
    ConfigurationView.askToSaveGrades(saveTheory, savePractice);
    ConfigurationModel.setSaveTheory(saveTheory);
    ConfigurationModel.setSavePractice(savePractice);
    save;
end;


end.