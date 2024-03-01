```Bash
iptables -t nat -L
```
```Bash
# like a tunnel but not
# any traffic going to this machines 12345 port, will be forwarded to their port 22
iptables -t nat -A PREROUTING -p tcp --dport 12345 -j DNAT --to-destination <their ip>22
```
```Bash
# like a tunnel but not
# any traffic coming to this machines port 22 will come back to me
iptables-t nat -A POSTROUTING -p tcp --dport 22 -j SNAT --to-source <my ip>
```
```Bash
<<Start
Let’s say that you are on your computer (IP Address: 10.50.45.33)
and you want to establish two-way communications with a host in a private network with an IP of 192.168.99.101 on port 22.

You have gained access, via ssh, to the router (IP Address 10.50.86.80)
 which is running a *Nix OS with IPTables installed and loaded and an internal IP address of 192.168.99.254.

How would you accomplish this using the Network Address Translation table of IPTables on the router?
Start

