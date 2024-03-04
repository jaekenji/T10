```
- daily reads
- make op directory
```
```
mkdir student20_04-03-24_HH06
```
```
- open a terminal for each target
- change into all directories
- make notes for the op
```
```
vim notes_04-03-24.txt
```
```
- start scripts
```
```
scipt -af termscreen.$$
```
```
- edit notes
```
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
- save
- copy paste ssh command
```
ssh -MS /tmp/Louise -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null student20@<ip>
```
- "MC I AM ON TARGET 1"
```
****** VETTING ******
w
date; date -u
uname -a

ls -latr /
ls -latr .
ls -latr ..
ls -latr /root
ls -latr /tmp
ls -latr /home

ps -elfH
ifconfig -a OR ip addr
sudo netstat -auntp OR ss -auntp

ls -latr /var/spool/cron
tail -100 /var/spool/cron
df

ls -latr /var/*/*acc*             # processing account
ls -latr /var/*log*               # checking for either logs being gathered or sent 
ls -latr /var/log/*               
ls -latr /etc/*syslog*

for user in $(cut -f1 d: /etc/passwd); do echo "###### $user crontab is :"
cat /etc/crontab
ls -la /etc/cron.*

find / \( -path /proc -prune -o -path /sys -prune \) -o -mmin -<minutes> -type f -print0 | xargs -0 ls -latr
 
sestatus OR getenforce

sudo cat /root/.bash_history
sudo cat ~/.bash_history

-----------------------------------------------------------------------------

Before Disconnect:

w
ls -latr /tmp
ps -elf
netstat -ltpn
ls -latr /var/log
find / \( -path /proc -prune -o -path /sys -prune \) -o -mmin -<minutes> -type f -print0 | xargs -0 ls -latr
```
```
ssh -S /tmp/Louise dummy -O forward -L 1111:<next ip>
```
