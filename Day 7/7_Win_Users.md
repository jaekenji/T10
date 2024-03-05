```
if wireshark is being run on a computer, how many reports should there be?

|---|
| 2 |
|---|

report privilege user on the box
report wireshark and logging on connections
```
```
Risks

Can they see you now?
Can they find you later?
What are they doing?
Can they actively stop you now?
Can they prevent you from acting in the future?

Locally?
Remotely?
```
```cmd
query user
netstat /anob
tasklist /V
wmic process get ProcessId,ParentProcessId,ExecutablePath
```
```cmd
:: whos on the box? are they elevated privileges?
query user
wmic computersystem get username

:: what time is it? is it a reasonable hour?
time /t

:: whats he doing? is he running security?
tasklist /V

:: what connections are there? are there multiple sessions?
netstat /anob
```
```
Where did you see the user?
What is their username?
How long have they been on?
Did they access locally or remotely?
What are they capable of doing?
What are they cuurently doing?
Do we need to be concerned? Do we need to adjust our plans?
```
```
REPORTABLE DETAILS
MC AND NSDB

Device and Logged in users
How long theyve been logged in
If they accessed locally or remotely
Wh
