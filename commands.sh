# Recon:

# Gather bulk information on target like DNS, CERTS, APIs
amass -d IP

# Find ports on IP
nmap -v IP

# Use the diredtory search tool
# https://github.com/maurosoria/dirsearch
python3 dirsearch.py -u IP

# Test connection to a port 
nc -v -v IP PORT




#---------------------------------------------------------------------------------------#




# Web

# XSS payloads 
#https://github.com/payloadbox/xss-payload-list

# SQL map
sqlmap -u "http://example.com/page?id=1" --dbs

# Burp suite

# Flask template injection
#https://nvisium.com/resources/blog/2015/12/07/injecting-flask.html 
#https://nvisium.com/resources/blog/2016/03/09/exploring-ssti-in-flask-jinja2.html
#https://nvisium.com/resources/blog/2016/03/11/exploring-ssti-in-flask-jinja2-part-ii.html



#---------------------------------------------------------------------------------------#



# Network

# Get own wifi IP
ifconfig en0

# Using ICMP to ping
ping IP

# Basic ssh with port
ssh username@IP -p PORT

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

