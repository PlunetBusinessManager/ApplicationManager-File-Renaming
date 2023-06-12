@echo off

:: Enable UTF-8 encoding for special characters

chcp 65001


:: Get the input folder path from the output folder path

SET OutputFolder=%1

set InputFolder=%OutputFolder:!_In=!_Out%


:: Check if the input folder exists and contains PDF files

if not exist %InputFolder%*.pdf (

echo There are no PDF files in the folder "%InputFolder%", exiting... > "%OutputFolder%\result.txt"

goto :eof

)


:: Loop through all PDF files in the input folder, copy them to the output folder, and rename them to DOCX

for %%F in (%InputFolder%*.pdf) do (

set filename=%%~nF

copy "%%F" "%OutputFolder%\%%~nF.docx"

)


:: Write a message to the log file

echo Finished copying and renaming all PDF files to DOCX files in the folder "%InputFolder%" >> "%OutputFolder%\result.txt"
