module ConfigurationController;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    ConfigurationController.pas
    Provides a controller for persistent configuration values
}

export  ConfigurationController = (change, load);

import  StandardInput; StandardOutput;
        ConfigurationModel qualified;
        ConfigurationView qualified;

procedure change;
procedure load;

end;

procedure change;
var saveTheory, savePractice: boolean;
begin
    ConfigurationView.askToSaveGrades(saveTheory, savePractice);
    ConfigurationModel.setSaveTheory(saveTheory);
    ConfigurationModel.setSavePractice(savePractice);
    if (ConfigurationModel.saveToFile)
    then writeln('Saved preferences in configuration file')
    else writeln('ERROR: Can´t save preferences in configuration file');
end;

procedure load;
begin
    if (ConfigurationModel.loadFromFile)
    then begin
        ConfigurationView.show(ConfigurationModel.getSaveTheory, ConfigurationModel.getSavePractice);
    end
    else change;
end;

end.