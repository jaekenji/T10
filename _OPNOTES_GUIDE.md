```
- daily reads
- make op directory
```
```console
mkdir student20_04-03-24_HH06
```
```
- open a terminal for each target
- change into all directories
- make notes for the op
```
```console
vim notes_04-03-24.txt
```
```
- start scripts
```
```console
script -af termscreen.$$
```
```
- edit notes
```
-----
```
OP: HH06
Date: 3/4/24
Start Time: 9:00
End Time: 10:00

-----
SOM
-----
FROM MISSION PLAN

-----
CREDS
-----
user::username20
pass::password20

==========
T1: Float Given
==========
X---------
```
-----
```
- request IP approval for all targets
```
```
- save
- copy paste ssh command
```
-----
```console
ssh -MS /tmp/Louise -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null student20@<the ip>
```
```
- notify MC
```
```console
ssh -S /tmp/Louise dummy -O forward -L 1111:<next ip>
```
```
****** SCAN ******


ip r
ip n
ping -c <ip>
nc -nczz <ip> <port>
ssh -S /tmp/<T> dummy -O forward -D 9050
proxychains nmap -Pn -n -vvv -T3 -sT -pT:22,111,22022,80,443,445,3389 <ip>
ssh -S /tmp/<T> dummy -O cancel -D 9050


****** IPTABLES ******

(is iptables on?)
lsmod

(are there rules?)
sudo iptables -L
sudo iptables -t nat -L -n

(configure)
sudo iptables -t nat -A PREROUTING -p tcp --dport 11337 -j DNAT --to-destination <ip>:<dst>

sudo iptables -t nat -A POSTROUTING -p tcp --dport 22 -j SNAT --to-source <MY IP (KALI NON FLOAT)>
or
iptables -t nat -A POSTROUTING -p tcp --dport 22 -j MASQUERADE


****** ABNORMAL LOGGING ******

Target
Name
PID
PPID
User of

```
