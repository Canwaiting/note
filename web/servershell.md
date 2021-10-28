service xinetd restart
sudo arp -d 192.168.1.104
sudo tcpdump -i enp3s0f1 -ent '(src 192.168.1.104 and dst 192.168.1.102) or (src 192.168.1.102 and dst 192.168.1.104)'


telnet 192.168.1.104 echo


00:e0:4c:82:2a:a5 > ff:ff:ff:ff:ff:ff, ethertype ARP (0x0806), length 42: Request who-has 192.168.1.104 tell 192.168.1.102, length 28

80:a5:89:d2:a2:65 > 00:e0:4c:82:2a:a5, ethertype ARP (0x0806), length 60: Reply 192.168.1.104 is-at 80:a5:89:d2:a2:65, length 46

