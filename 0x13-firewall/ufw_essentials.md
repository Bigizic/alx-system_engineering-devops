# Uncomplicated firewall (UFW)

Uncomplicated firewall is a firewall configuration tool that runs on top of iptables, included by default within ubuntu distributions.

to use ufw you have to be a super user

# MUST READ

## HOW TO SETUP UP UFW PORT FORWARDING

* Disable ufw if enabled
* Allow port that u want to forward to
* Edit file `/etc/ufw/before.rules` add this line to it before the *filter:

		#Port fowarding from 8080 to 80
 		*nat
  		:PREROUTING ACCEPT [0:0]
   		-A PREROUTING -p tcp --dport {port packet to forwad} -j REDIRECT --to-port {port where it being/should forwarded/forward to}
  		COMMIT

* enable ufw
* reload ufw
* Then check with nmap if the ports are opened:


		nmap -F {ip address} or {domain name}

* If not open troubleshoot it.. Usually nginx config, try restarting nginx,
  * fix nginx config file at `/etc/nginx/sites-enabled/default`. check for listening ports and fix
  * or try `grep listen /etc/nginx/sites-enabled/default` to see the ports nginx is listening to


| UFW commands | USES |
| ---- | ---- |
| sudo ufw status | to check if ufw is enabled |
| sudo ufw enable | to enable ufw |
| sudo ufw disable | to disable ufw |
| sudo ufw deny from `54.132.34.33` | to block all network connections that originate from a specific ip adress, replace `54.132.34.33` with ip address to block |
| sudo ufw deny from `54.132.34.33/24` | to block a full subnet, this would block all ip adresses in the example subnet `54.132.34.33/24` |
| sudo ufw deny in on eth0 from `54.132.34.33` | to block incoming connections from a specific ip address to a specific network interface, replace the highlighted ip address with desired ip address. eth0 is a common naming convention for Ethernet network interfaces |
| sudo ufw allow from `54.132.34.33` | to allow an ip address |
| sudo ufw allow in on eth0 from `54.132.34.33` | to allow incoming connections from a specific ip address to a specific network interface. eth0 is a common naming convention for Ethernet network interfaces |
| sudo ufw delete allow from `54.132.34.33` | to delete a rule that was previusly set up within ufw use `ufw delete` followed by the rule `allow` or `deny` and the target specification. |
| sudo ufw status numbered | verify that ufw rules are correctly set, also lists rule id, you can delete a rule by the rule id. That would be sudo ufw delete `10` where 10 is the id of the rule |
| sudo ufw app list | to list which apps?/profiles are currently available |
| sudo ufw allow "{app name}" | to allow any app ufw can work with |
| sudo ufw allow from `54.132.34.33` proto tcp to any port 22 | to allow incoming SSH from specific Ip address or subnet, you’ll include a from directive to define the source of the connection. This will require that you also specify the destination address with a to parameter. To lock this rule to SSH only, you’ll limit the proto (protocol) to tcp and then use the port parameter and set it to 22, SSH’s default port. The command will only allow ssh connections coming from the ip address 54.132.34.33 |
| sudo ufw allow from `54.132.34.33/24` proto tcp to any port 22 | You can also use a subnet address as from parameter to allow incoming SSH connections from an entire network |
| sudo ufw allow from `54.132.34.33` to any port 873 | The Rsync program, which runs on port 873, can be used to transfer files from one computer to another. To allow incoming rsync connections from a specific IP address or subnet, use the from parameter to specify the source IP address and the port parameter to set the destination port 873. The following command will allow only Rsync connections coming from the IP address 54.132.34.33 |
| sudo ufw allow from `54.132.34.33/24` to any port 873 | To allow the entire `54.132.34.33/24` subnet to be able to rsync to your server, run |
| sudo ufw allow from `54.132.34.33` to any port 3306 | To allow incoming MySQL connections from a specific IP address or subnet, use the from parameter to specify the source IP address and the port parameter to set the destination port 3306. |
| sudo ufw allow from `54.132.34.33/24` to any port 3306 | To allow the entire `54.132.34.33/24` subnet to be able to connect to your MySQL server, run |
| sudo ufw allow from `54.132.34.33` to any port 5432 | To allow incoming PostgreSQL connections from a specific IP address or subnet, specify the source with the from parameter, and set the port to 5432 |
| sudo ufw allow from `54.132.34.33/24` to any port 5432 | To allow the entire `54.132.34.33/24` subnet to be able to connect to your PostgreSQL server, run |
| sudo ufw deny out 25 | Mail servers, such as Sendmail and Postfix, typically use port 25 for SMTP traffic. If your server shouldn’t be sending outgoing mail, you may want to block that kind of traffic. To block outgoing SMTP connections |
