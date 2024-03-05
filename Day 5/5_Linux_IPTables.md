```Bash
lsmod # check if iptables is loaded
```
```Bash
iptables -t nat -L
```
```Bash
# like a tunnel but not
# any traffic going to this machines 12345 port, will be forwarded to their port 22
iptables -t nat -A PREROUTING -p tcp --dport 12345 -j DNAT --to-destination <their ip>:22
```
```Bash
# like a tunnel but not
# any traffic coming to this machines port 22 will come back to me
iptables -t nat -A POSTROUTING -p tcp --dport 22 -j SNAT --to-source <my ip>
```
```Bash
<<.
Let’s say ur on ur computer (10.50.45.33)
and you want a two-way communication with a host in a private network with an IP of 192.168.99.101:22

You have access, via ssh, to the router (IP Address 10.50.86.80)
which is running *Nix with IPTables and an internal IP address of 192.168.99.254

How would you accomplish this using the Network Address Translation table of IPTables on the router?
.

PREROUTING
iptables -t nat -A PREROUTING -p tcp --dport 22022 -j DNAT --to-destination 192.168.99.101:22

POSTROUTING
iptables -t nat -A POSTROUTING -p tcp --dport 22 -j MASQUERADE    
iptables -t nat -A POSTROUTING -p tcp --dport 22 -j SNAT --to-source 192.168.99.254 
```
