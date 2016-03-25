for /F "tokens=*" %%x in (<drive>:\<filepath>\<filename>) DO (
echo Processing %%x
robocopy "C:\Files_for_transfer\Netbeans\7.3" "\\%%x\C$\Program Files\Netbeans 7.3\etc"
robocopy "C:\Files_for_transfer\Netbeans\8.0" "\\%%x\C$\Program Files\Netbeans 8.0\etc"
psexec \\%%x cmd /c "setx -m JAVA_HOME "C:\Program Files\Java\jdk1.8.0_65"
psexec \\%%x cmd /c "shutdown /r"
)
PAUSE
