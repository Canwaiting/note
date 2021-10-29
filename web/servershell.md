service xinetd restart
sudo arp -d 192.168.1.104
sudo tcpdump -i enp3s0f1 -ent '(src 192.168.1.104 and dst 192.168.1.102) or (src 192.168.1.102 and dst 192.168.1.104)'


telnet 192.168.1.104 echo


00:e0:4c:82:2a:a5 > ff:ff:ff:ff:ff:ff, ethertype ARP (0x0806), length 42: Request who-has 192.168.1.104 tell 192.168.1.102, length 28

80:a5:89:d2:a2:65 > 00:e0:4c:82:2a:a5, ethertype ARP (0x0806), length 60: Reply 192.168.1.104 is-at 80:a5:89:d2:a2:65, length 46


sudo tcpdump -i enp3s0f1 -nt -s 500 port domain
host -t A www.baidu.com

IP 192.168.1.101.41350 > 119.29.29.29.53: 54066+ [1au] A? www.baidu.com. (42)
IP 119.29.29.29.53 > 192.168.1.101.41350: 54066 3/0/1 CNAME www.a.shifen.com., A 183.232.231.172, A 183.232.231.174 (101)



sudo tcpdump -ntx -i lo
telnet 127.0.0.1

IP 127.0.0.1.48502 > 127.0.0.1.23: Flags [P.], seq 141:143, ack 109, win 512, options [nop,nop,TS val 2808135346 ecr 2808134947], length 2
	0x0000:  4510 0036 0137 4000 4006 3b79 7f00 0001
	0x0010:  7f00 0001 bd76 0017 89d2 d818 6a61 2555
	0x0020:  8018 0200 fe2a 0000 0101 080a a760 beb2
	0x0030:  a760 bd23 0d00

IP 127.0.0.1.44422 > 127.0.0.1.41475: Flags [S], seq 3849958924, win 65495, options [mss 65495,sackOK,TS val 2808135456 ecr 0,nop,wscale 7], length 0
    0x0000:  4500 003c 52d3 4000 4006 e9e6 7f00 0001
    0x0010:  7f00 0001 ad86 a203 e579 b60c 0000 0000
    0x0020:  a002 ffd7 fe30 0000 0204 ffd7 0402 080a
    0x0030:  a760 bf20 0000 0000 0103 0307

IP 127.0.0.1.48502 > 127.0.0.1.23: Flags [S], seq 2312296331, win 65495, options [mss 65495,sackOK,TS val 2808129489 ecr 0,nop,wscale 7], length 0
	0x0000:  4510 003c 0117 4000 4006 3b93 7f00 0001
	0x0010:  7f00 0001 bd76 0017 89d2 d78b 0000 0000
	0x0020:  a002 ffd7 fe30 0000 0204 ffd7 0402 080a
	0x0030:  a760 a7d1 0000 0000 0103 0307
