```
What causes logs?
- authentication failures
- sudo
- connection events

How to view logs?
- cat | grep
- tail
- less
- sed

How can an operator tell they generated logs?
- vetting
```
```
# REPORT

//hax
banner grab of command -> timestamp is the left lateral limit
//BEGIN VETTING
date
date -u
time line 1
line 2
line 3
//LOGS
sudo cat /var/log/btmp
file /var/log/btmp
sudo lastb
//BAD LOGIN
last -10
sudo ls -latr /var/log
```
```
Logs

Directories
- /var/log
- /var/adm

Normal look
- /var/log/syslog or /var/log/messages or /var/adm or dmesg
- /var/log/auth.log or /var/log/secure
- /var/log/kern

USEFUL LOGS
- /var/account/acct
- /var/log/lastlog (lastlog command)
- btmp
- secure
- sulog
- utmp
- wtmp
- xferlog

Ports are 514 for plain text, 6514 for encrypted

loghost (remote log server)
in log configuration will look like @ or @@

/var/log/syslog or /var/log/messages
stores all global activity including startup messages

/var/log/auth.log or /var/log/secure
includes successful logins, failed login attempts,  and other login methods

dsmeg
kernel logs in memory

/var/log/kern

/var/log/cron

ssh logs

web leverage will be kept in /var/www

verify which logs updated based on user MY activity
should be disconnect procedures

processing acocount commands
```
```Bash
ac          # prints out stats about users connection times in hours in the current /var/log/wtmp
accton      # used to turn on/off process accounting
sa          # summarizes account information based from previously executed commands, operation times, and cpu times at /var/log/pacct
lastcomm    # prints info about previously executed commands in /var/account/pacct

date -d @time
```
```

