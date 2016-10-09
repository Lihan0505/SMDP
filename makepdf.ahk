#NoEnv 
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

IfNotExist, wkhtmltopdf.exe
    MsgBox,  wkhtmltopdf.exe does not exist. Get it here http://wkhtmltopdf.org
else IfNotExist, out.html
    MsgBox, HTML file does not exist. Please render one.
else
{
RunWait, %comspec% /c wkhtmltopdf out.html %A_Desktop%\out.pdf,, Hide
MsgBox,,SMDP, PDF Created
}
return