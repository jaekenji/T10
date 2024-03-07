```
WINDOWS REMOTE MANAGEMENT
```
```
POWERSHELL REMOTING

Default WinRM/Powershell Remoting
> 5985 HTTP
> 5986 HTTPS
```
```
EVIL WINRM

Post-Exploit tool

Written in ruby
> uses powershell remoting protocol to initialize runspace pools and create process piplelines
> Basically powershell

> Can load in memory Powershell scripts, C# assemblies and DLLs for AV evasion
> Compatible with Donut (post-exploit tool)
> SSL and certificate tool
> Menu offers more funtionality, FILE UPLOAD and DOWNLOAD
> Can execute binaries on target

INSTALL

use ruby installation on kali

gem install evil-winrm
```
```
USAGE

1. Configure tunnels

evil-winrm -i <tunnel-ip> -P <tunnel-port> -u <username> -S

2. Enter Credential as prompted

3. Happy Hacking
```
```
LOGS

powershell log
operational log
analytic log
```
