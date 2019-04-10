taskkill /IM SystemSettings.exe /F
taskkill /IM Calculator.exe /F
taskkill /IM WinStore.App.exe /F
taskkill /IM AdobeARM.exe /F
taskkill /IM Chrome.exe /F
taskkill /IM SearchUI.exe /F
taskkill /IM Microsoft.Photos.exe /F
taskkill /IM YourPhone.exe /F
taskkill /IM SkypeApp.exe /F
sc config fhsvc start= disabled
net stop fhsvc  /y
sc config TermService start= disabled
net stop TermService  /y
sc config WinVNC4 start= disabled
net stop WinVNC4  /y
exit /b 0