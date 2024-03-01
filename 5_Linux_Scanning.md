```
"Today's Scanning Plans Tomorrows Ops"
```
```bash
# nmap   {scan type}   {options}        {target specifications}
  nmap    -sS           -A               10.0.0.0/24 -p22
  nmap                  -T4 -sV -O2      10.1.1.0-170 -pU:53,111,T:21-25
```
```bash
wget --header"Accept:txt/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" --referrer connect.wso2.com http://google.com
```
```bash
curl -A "Mozilla/5.0 (Windows; U; Winodws NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.3.3" http://yhoo.com
```
```
httpd logs in /var/www
```
```bash
snmp-check -h
snmp-check 127.0.0.1 -c public > snmp_test      # 161 or 162 
```
```bash
rpcinfo -p <target>                             # 111 or 135 ;)
```
```bash
ssh -S /tmp/T1 dummy -O foraward -D 9050
```

------

```
=====
-----
T1: 10.50.0.1
-----
//SCANZ
ping 192.169.0.1 -c 5
# results

tracepath traceroute 192.168.0.1
#results

ssh -S /tmp/T1 -dummy -O forward -D 9050 # ON OUR MACHINE

#                 (doesnt check if host is up)    (no dns)    (verbosely)     (slower and controlled)     (full tcp connect scan)      (tcp ports)
proxychains nmap -Pn                             -n          -vvv            -T3                         -sT                          -pT:22,111,22022,80,443,445,3389 192.168.0.1
#results




=====
=====
-----
T2: 192.168.0.1
-----









=====
```
