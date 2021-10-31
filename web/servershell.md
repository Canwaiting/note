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

IP 127.0.0.1.44422 > 127.0.0.1.41475: Flags [S], seq 3849958924, win 65495, options [mss 65495,sackOK,TS val 2808135456 ecr 0,nop,wscale 7], length 0

IP 127.0.0.1.48502 > 127.0.0.1.23: Flags [S], seq 2312296331, win 65495, options [mss 65495,sackOK,TS val 2808129489 ecr 0,nop,wscale 7], length 0

#Chapter 4 

export http_proxy="canwaiting-PC:3128"

acl localnet src 192.168.1.0/24
http_access allow localnet

sudo service squid restart


sudo arp -d 192.168.1.1
sudo tcpdump -s 2000 -i enp3s0f1 -ntx '(src 192.168.1.102) or (dst 192.168.1.102) or(arp)' > ~/tcpdump.txt
sudo tcpdump -s 2000 -i wlp3s0 -ntx '(src 192.168.1.102) or (dst 192.168.1.102) or(arp)' > ~/tcpdump.txt
wget --header="Connection: close" http://www.baidu.com/index.html


---------------------------
--2021-10-30 21:03:16--  http://www.baidu.com/index.html
正在解析主机 www.baidu.com (www.baidu.com)... 183.232.231.172, 183.232.231.174
正在连接 www.baidu.com (www.baidu.com)|183.232.231.172|:80... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度： 2381 (2.3K) [text/html]
正在保存至: “index.html”

index.html            100%[=======================>]   2.33K  --.-KB/s    用时 0s

2021-10-30 21:03:16 (112 MB/s) - 已保存 “index.html” [2381/2381])


--2021-10-30 21:17:51--  http://www.baidu.com/index.html
正在解析主机 www.baidu.com (www.baidu.com)... 183.232.231.172, 183.232.231.174
正在连接 www.baidu.com (www.baidu.com)|183.232.231.172|:80... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度： 2381 (2.3K) [text/html]
正在保存至: “index.html.3”

index.html.3          100%[=======================>]   2.33K  --.-KB/s    用时 0.01s

2021-10-30 21:17:51 (173 KB/s) - 已保存 “index.html.3” [2381/2381])
