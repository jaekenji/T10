```Notes
Access: Local or Remote
```
```Bash
w
who -Ha
netstat -auntp
ps -elf (-H --forest)
last
```
```Notes
Authority
```
```Bash
cat /etc/sudoers
cat /etc/group
groups "user"
```
```Notes
What are they doing?
```
```Bash
ps -elfH
netstat -auntp
~/,bash_history
~/.lesshst
cat "/dir/log"
```
```Notes
Main way to assess risk

FOR THE TARGET -> where do you see the user
FOR THE USER   -> whats their username
ACCESS TIME    -> how long have they been on
ACCES METHOD   -> access remotely, locally?
PRIVILEGES     -> what are they currently doing
RECCOMEND      -> concern, adjust plans?

Privileged Users Reportable Detail
MC  NSDB  ALL OF THE ABOVE
```
