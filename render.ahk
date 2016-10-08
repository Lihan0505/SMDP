#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileSelectFile, OutVar,,, Open a file, Text Documents (*.txt; *.md)


RunWait, %comspec% /c multimarkdown\multimarkdown %OutVar% > out.html,, Hide
MsgBox,,SMDP, Render Complete!