```
"Today's Scanning Plans Tomorrows Ops"
```
```bash
# nmap       {scan type}       {options}        {target specifications}
  nmap        -sS               -A               10.0.0.0/24 -p22
  nmap                          -T4 -sV -O2      10.1.1.0-170 -pU:53,111,T:21-25
```
