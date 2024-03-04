```cmd
date /t
time /t

wmic cpu get loadpercentage
wmic logicaldisk get name
dir C:\

ipconfig /all
hostname
echo %userdomain%
systeminfo

tasklist
(wmci process get processid,parentprocessid,executablepath)

netstat /a /b /n /o

dir <file>
dir
cd
type
more
strings
findstr

schtasks /Query
```
```
MACB

Modified - contents were changed
Accessed - contents were read
Change   - metadata is changed
Birth    - file was made
```
```cmd
net share
net use
net session
net pause
net continue
net stop
net start

net accounts
net computer
net config
net file
net group
net localgroup

net statistics
net time
net user
net view
net name
net print
net send
```
```cmd
reg query
reg compare
reg add
reg delete
reg copy
reg export
reg import
```
```cmd
doskey
wevtutil
schtasks
arp
tracert

dir /b/s *.txt
- search for all text files in directory

dir /b/s *.exe >> c:\filelist.txt
type filelist.txt | find /i "string im lokking for"
```
