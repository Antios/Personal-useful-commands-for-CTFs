# Recon:

# Gather bulk information on target like DNS, CERTS, APIs
amass -d IP

# Test connection to a port 
nc -v -v IP PORT

# Find ports on IP
nmap -v IP

# Use the diredtory search tool
# https://github.com/maurosoria/dirsearch
python3 dirsearch.py -u IP



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

# Basic ssh with port
ssh username@IP -p PORT

# Ping scan on a range of IP addresses within a specified subnet
nmap -sn IP/24




