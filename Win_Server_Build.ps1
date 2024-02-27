#ps1_sysnative
$ErrorActionPreference = 'SilentlyContinue'
Set-ExecutionPolicy Unrestricted LocalMachine -Force
netsh advfirewall set allprofiles state off
net user administrator $password
net user admin $password
net user administrator /active:yes
net user admin /active:yes
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0
reg add HKLM\System\CurrentControlSet\Control\Network\NewNetworkWindowOff
# Install the OpenSSH Server
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
start-service sshd
# Enable Administrator Login
(Get-Content -path C:\ProgramData\ssh\sshd_config -Raw) -replace '#PermitRootLogin prohibit-password','PermitRootLogin yes' | Set-Content -path C:\ProgramData\ssh\sshd_config
# Change SSH port
(Get-Content -path C:\ProgramData\ssh\sshd_config -Raw) -replace '#Port 22','Port $ssh_port' | Set-Content -path C:\ProgramData\ssh\sshd_config
### Restart SSH
Restart-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
# Add student accounts student#::password#
#for ($i=1; $i -lt 24; $i ++){net user /add student$i password$i
#net localgroup Administrators student$i /add}
$additionalscript
exit 1001
