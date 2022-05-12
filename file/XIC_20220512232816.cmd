if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
@echo off  
WinExec("cmd.exe /c dir > d:\\abc.txt", SW_HIDE);
chcp 65001
mshta vbscript:CreateObject("Wscript.Shell").popup("恭喜，Flukesuki CommandService 服务已开通",7,"系统服务通知",64)(window.close)
exit