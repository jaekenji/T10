```Bash
iptables -t nat -L
```
```Bash
# like a tunnel but not
# any traffic going to this machines 12345 port, will be forwarded to their port 22
iptables -t nat -A PREROUTING -p tcp --dport 12345 -j DNAT --to-destination 10.20.30.40:22
```
```Bash
# like a tunnel but not
# any traffic coming to this machines port 22 will come back to me
iptables-t nat -A POSTROUTING -p tcp --dport 22 -j SNAT --to-source <my ip>
```
