sudo iptables -A INPUT -i eth1 -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -i eth1 -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -i eth1 -p tcp --dport 443 -j ACCEPT
sudo iptables -A INPUT -i eth1 -j DROP
 
sudo apt-get install iptables-persistent -y
