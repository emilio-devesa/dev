module ConfigurationModel;
{   Práctica 2008-2009
    Command Line program written in Pascal ISO 10206 (Extended Pascal).
    More info: README.md

    Emilio Devesa
    https://emiliodevesa.wordpress.com/

    ConfigurationModel.pas
    Provides a model for persistent configuration values
}

export ConfigurationModel = (getSaveTheory, getSavePractice, setSaveTheory, setSavePractice, saveToFile, loadFromFile);

import StandardInput; StandardOutput;

const configFileName = '.config';

type tFile = bindable file of boolean;

var saveTheory, savePractice: boolean;

function getSaveTheory: boolean;
function getSavePractice: boolean;
procedure setSaveTheory(val: boolean);
procedure setSavePractice(val: boolean);
function saveToFile: boolean;
function loadFromFile: boolean;

end;

function getSaveTheory;
begin
    getSaveTheory := saveTheory;
end;

function getSavePractice;
begin
    getSavePractice := savePractice;
end;

procedure setSaveTheory;
begin
    saveTheory := val;
end;

procedure setSavePractice;
begin
    savePractice := val;
end;

function fileExists(var aFile: tFile; aName: String): boolean;
var b: bindingtype;
begin
    unbind(aFile);
    b := binding(aFile);
    b.name := aName;
    bind(aFile, b);
    b := binding(aFile);
    fileExists := b.existing;
end;

function fileIsBound(var aFile: tFile; aName: String): boolean;
var b: bindingtype;
begin
    unbind(aFile);
    b := binding(aFile);
    b.name := aName;
    bind(aFile, b);
    b := binding(aFile);
    fileIsBound := b.bound;
end;

function saveToFile;
var configFile: tFile;
begin
    if (fileIsBound(configFile, configFileName))
    then begin
        rewrite(configFile);
        write(configFile, saveTheory);
        write(configFile, savePractice);
        saveToFile := true;
    end
    else saveToFile := false;
end;

function loadFromFile;
var configFile: tFile;
begin
    if (fileExists(configFile, configFileName)) and_then (fileIsBound(configFile, configFileName))
    then begin
        reset(configFile);
        read(configFile, saveTheory);
        read(configFile, savePractice);
        loadFromFile := true;
    end
    else loadFromFile := false;
end;

end.