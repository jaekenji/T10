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
1. Confirm your mission’s log cleaning policy
2. Identify all of your logs*
3. Disable logging as needed
4. Identify a unique string or strings that identify all of your logs and only your logs
5. Confirm Actions with Senior
6. grep out the log, using -v to remove entries with your unique strings to a temporary file in /tmp
7. Verify all offending logs have been removed
8. Cat out the contents of your clean log file onto the original log file
9. Use ‘touch’ command to update the timestamp to the most recent log entry
10. Delete /tmp/ log file
11. Restart logging
```
```Bash
<# CLEANING LOGS #>



# SECURE LOGS

grep -v ‘sshd\[1369\]’ /var/log/secure > /tmp/secure.clean
# grep through cleaned LOG to make sure
cat /tmp/secure.clean > /var/log/secure
touch -t 201504211118.24 /var/log/secure                                             # time equals last entry in log
rm -rf /tmp/secure.clean



# CRON LOGS

tail -30 /var/log/cron
grep -v ‘Oct 20 05:52:50’ > /tmp/cron
cat /tmp/cron> /var/log/cron
touch -t 1610200601.01 /var/log/cron
rm -rf /tmp/cron



# AUDIT.LOG

service auditd stop
grep -n ‘192.0.2.80’ /var/log/audit/audit.log <IP address,PID,time>
wc -l /var/log/audit/audit.log
head -n 38 /var/log/audit/audit.log > /tmp/aud.log                                   # where X is the line number before your entries start)
wc -l /tmp/aud.log                                                                   # should be X lines
tail /tmp/aud.log
date -d @epoch-time-of-last-entry 1476342061.290
cat /tmp/aud.log > /var/log/audit/audit.log
chmod 0600 /var/log/audit/audit.log                                                  # or whatever the preexisting privs were
touch -t time of last entry([CC]yymmddhhmm[.ss]) /var/log/audit/audit.log
ls -al /var/log/audit/audit.log
rm /tmp/aud.log
service auditd start



# MESSAGES

tail /var/log/messages
grep -n ‘Oct 21 50:4’ /var/log/messages
head -n 1109 /var/log/messages > /tmp/mess.log
cat /tmp/mess.log > /var/log/messages
touch -t 1610210501.01 /var/log/messages
rm -rf /tmp/mess.log
```
