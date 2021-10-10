#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

#q::
  Run, explorer.exe C:\Users\tgrehawi
  Return

#w::
  IfWinExist, ahk_exe chrome.exe
    WinActivate
  else
    Run, chrome.exe
  Return

#+w::
  Run, chrome.exe --incognito
  Return

#a::
  Run, C:\Users\tgrehawi\AppData\Local\wsltty\bin\mintty.exe --wsl -o Locale=C -o Charset=UTF-8 /bin/wslbridge -C~ -t /bin/bash
  Return

#s::
  Run, snippingtool.exe
  WinWait, ahk_exe snippingtool.exe,, 3
  if ErrorLevel
    TrayTip, AHK, Snipping Tool timed out!
  else
    Send !n
  Return

#+s::
  Send, {PrintScreen}
  TrayTip, , Screenshot taken!
  Return
