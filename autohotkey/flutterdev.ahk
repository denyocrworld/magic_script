#NoEnv
#SingleInstance, Force

CheckAutoStartup()

CheckAutoStartup()
{
    RegRead, AutoHotkeyScript, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Run, AutoHotkeyScript
    if (AutoHotkeyScript != A_ScriptFullPath)
        RegWrite, REG_SZ, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Run, AutoHotkeyScript, %A_ScriptFullPath%
}


CreateTempScript(command) 
{
  ; Define the script content
  scriptContent := command

  ; Create a temporary script file
  scriptFile := A_Temp . "\temp.bat"
  FileDelete, %scriptFile%
  FileAppend, %scriptContent%, %scriptFile%

  ; Run the script using sh
  Run, %scriptFile%,, hide

  ; Optional: Wait for the script to finish executing before deleting the file
  WinWaitClose, ahk_exe sh.exe

  ; Delete the temporary script file
  FileDelete, %scriptFile%
}

^!+p::
  CreateTempScript("rundll32 sysdm.cpl,EditEnvironmentVariables")
return

^+!f::
  CreateTempScript("cd %USERPROFILE%/Documents/FLUTTER_PROJECT && explorer .")
return

^+!e::
  CreateTempScript("cd %USERPROFILE%/Documents/ELECTRONRX && explorer .")
return