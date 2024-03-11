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
ssh -MS /tmp/ -p    -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null student20@
```
```
- WAIT UNTIL MISSION START TIME
- notify MC
- wait for good to go
```
```
ANALYST - REMEMBER WHAT NEEDS TO BE REPORTED

Req   MAC address and IP of all interfaces upon connection
Req   The completion of any analyst action in the target section
Req   Remote and local file hashes for all collected files.
```
```
MC - REMEMBER WHAT NEEDS TO BE REPORTED

X     Verify all IP addresses on mission plan before beginning operation AI

Req   All connections to each target
Req   All disconnections from each target
Req   Collecting a file that exceeds 10MB in size AI
Req   Total downloads that exceed 100MB per operationAI

Rpt   Encountering logged on Privileged (root;admin) Users AI
Rpt   Encountering unknown binaries/processes/files/jobs AI
Rpt   Encountering any form of abnormal/irregular/remote logging AI
Rpt   Encountering security productsAI
Rpt   Logs that have been changed based on your actions on target
Rpt   Providing details for DEBRIEF after operation
Rpt   DEBRIEF Template and example is provided at the bottom of this document
Rpt   MUST include 1 sentence per target, as well as logged in privileged user information

Req   Deleting anything from a target device AI
Req   Placing any file on target AI
Req   Adding an IP to the mission plan AI
Req   Changing anything on a target device AI
Req   Verifying T10 effect immediately before emplacing it AI
Req   Taking any action not identified in the mission plan AI
```
```
CYCLE OF AWESOMENESS

- vet
- opnotes
- mc
- analyst
- nsdb
- repeat
```
```console
ssh -S /tmp/ dummy -O forward -L 1111:
```
```
if scans are asked
```
```
****** SCAN ******

ip r
ip n


ping -c <ip>
for i in {1..254} ;do (ping -c 1 192.168.0.$i | grep "bytes from" &) ;done
FOR /L %i IN (1,1,254) DO (ping -n 1 192.168.1.%i | FIND "Reply" && echo 192.168.1.%i is up)


nc -nczz <ip> <port>
ssh -S /tmp/<T> dummy -O forward -D 9050
proxychains nmap -Pn -n -vvv -T3 -sT -pT:22,111,22022,80,443,445,3389 <ip>
ssh -S /tmp/<T> dummy -O cancel -D 9050
```
