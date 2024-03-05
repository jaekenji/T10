```Notes
Situational Awareness
```
```Bash
dmidecode
free
top
```
```Notes
Disk Usage
```
```Bash
fdisk
du
df
ulimit
quota
mount
lspci
lsblk
lsusb
```
```Notes
Processor Architecture
x86 or x86_64 or ARM

Programs designed for different processor architectures dont like to work on eachother

Machine Identification
- MAC address
- IPv4 address
- IPv6 address
- Hostnamre
- Domain Name
```
```Bash
ifconfig
ip
hostname
uname -a -r -v -m -i -o
cat /etc/*rel*
```
```Notes
Processes
```
```Bash
ps -elf
ps -elf --forest
```
```Notes
Open Ports/Connections
- LISTEN
- ESTABLISHED
- CLOSED_WAIT
- TIME_WAIT
- SYN_SENT
- SYN_WAIT
- UNKNOWN
```
```Bash
netstat -ral -tuwx -enWp
ss -ntlp -ano -anotup
```
```Notes
Files
```
```Bash
ls -latr
dir
cd
file
cat
tail
heaf
more
less
strings
grep
```
```Notes
Jobs

Cron

Cron jobs crontab
```
```Bash
cat /etc/crontab
```
```Notes
Timestamps

MAC

Modified time
Contents of file

Access time
Data was access or read (commands or scripts)

Change Time
Effects from metadata

cat file -> Access Time
mv file -> Access Time, Change Time
cp file -> all 3

Touch
```
```Bash
touch -t (milliseconds issue)
touch -r (file reference issue)
```
```Notes
Stat
```
```Bash
stat /file
stat -r /file (show file system status)
```
```Notes
User Activity

students, no worries
root, yes indicator of being discovered and making comprimising changes
```
```Bash
w
who
whoami
```
```Notes
Logging

Guarenteed to be logging

Any logs being forwarded is a concern

BE AWARE OF

- creating
- modifying
- firewall rules
- stopping or starting services

Open Source Research

google it
man.openbsd.org
manpages.ubuntu.com
stackoverflow.com

Why is it important to check current memory usage?
- Too many resources -> hault machine 

What can we learn by checking scheduled jobs?
- Malware Persistence
- Logs and where its logging to

How do timestamps help us work cleanly?
- Obfuscation
- if spotify.exe pops up

What are residual risks?
- log forwarding

WITH ALL OF THIS BEING SAID

GAIN SITUATIONAL AWARENESS ON TARGETS
RUNNING COMMANDS UPON ACCESS
RUNNING COMMANDS UPON EXIT
```
