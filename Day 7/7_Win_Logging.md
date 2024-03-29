```
Logs
> Application
> Security
> Setup
> System
```
```
Event Logs:
Log Name
Source
Date
Event ID
Task
Level/Opcode
Keyword
User
Computer
Description
```
```
***** EXAMPLE *****

Event[24]:
 Log Name: Security
 Source: Microsoft-Windows-Security-Auditing
 Date: 2024-03-05T10:20:37.460
 Event ID: 4798
 Task: User Account Management
 Level: Information
 Opcode: Info
 Keyword: Success
 User: N/A
 User Name: N/A
 Computer: DESKTOP-4LUOJ7A
 Description:
A user's local group membership was enumerated.

Subject:
        Security ID:          S-1-5-18
        Account Name:         DESKTOP-4LUOJ7A
        Account Domain:       WORKGROUP
        Logon ID:             0x3E7
User:
        Security ID:          S-1-5-21-6472957295-0385739256-8210175032-503
        Account Nmae:         DefaultAccount
        Account Domain:       DESKTOP-4LUOJ7A

Process Information:
        Process ID:           0x434
        Process Name:         C:\Windows\System32\rund1132.exe
```
```cmd
auditpol
wevtutil qe security /c:25 /rd:true /f:text
wmic
```
```powershell
Get-EventLog system -newest 3 | Format-List
```
```cmd
:: wevtutil option to find # of events and size of log
:: wevtutil qe <LogName> /c:<Number of events> /f:text
wevtutil qe Application /c:100 /f:text

:: backup and clear log in one line
:: wevtutil epl <LogName> <LogName>Backup.evtx & wevtutil cl <LogName>
wevtutil epl Application ApplicationBackup.evtx & wevtutil cl Application

:: clearing leaves a security log
:: check to see if cleared
wevtutil qe Application /c:100 /f:text
:: check to see security log generated
wevtutil qe System /f:text | findstr /C:"Event ID: 104"
```
```
Common Event IDs


Successful Logon: 4624 (...)
Successful Logoff: 4634 (...)
Failed Login Attempts: 4625 (...)
Accoutn Locked-out: 644


File Accessed: 4656/4663
File Deleted: 4663


User Created: 4720
Password Reset: 4724


Log Rights Granted/Removed: 4704/4705
Access Granted/Removed: 4717/4718
Audit or Account Policies Changed: 4719/4739
User Added to Security-Related group: 4728


Log Cleared: 1102
Logging Stopped: 1100
```
```
ABNORMAL LOGGING REPORTABLE DETAILS

MC   NSDB    DECRIPTION
X    X       Process name/options, PID, PPID, user
X    X       Location of configuration file and if it's abnormal or irregular
X    X       IP (or hostname) of where logs are being sent
X    X       Network connections opened/esablished by abnormal logging
X    X       Open source documentation if available
X    X       Brief description
X    X       Recommendation
```
