```
Netsh used in command line
```
```
netsh  [-a AliasFile]  [-c Context]  [-r RemoteComputer]  [{NetshCommand| -f ScriptFile}]
```
```cmd
:: check if theres any firewall rules to begin with
netsh interface portproxy show all

:: like iptables for THIS device ->  MY ADDRESS                MY PORT         ADDRESS 2 SEND             PORT 2 SEND    
netsh interface portproxy add v4tov4 listenaddress=192.168.0.1 listenport=1111 connectaddress=192.168.0.2 connectport=22 protocol=tcp

:: check if rule is in place
netsh interface portproxy show all
```
