## 0-OSI_model:

How is the OSI model organized?

	Alphabetically

	From the lowest to the highest level

	Randomly

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 1-types_of_network:

What type of network a computer in local is connected to?

	Internet

	WAN

	LAN


What type of network could connect an office in one building to another office in a building a few streets away?

	Internet

	WAN

	LAN


What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?

	Internet

	WAN

	LAN

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 2-MAC_and_IP_address:

What is a MAC address?
	The name of a network interface

	The unique identifier of a network interface

	A network interface


What is an IP address?

	Is to devices connected to a network what postal address is to houses

	The unique identifier of a network interface

	Is a number that network devices use to connect to networks

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 3-UDP_and_TCP:

Which statement is correct for the TCP box:

	It is a protocol that is transferring data in a slow way but surely
	It is a protocol that is transferring data in a fast way and might loss data along in the process


Which statement is correct for the UDP box:
	It is a protocol that is transferring data in a slow way but surely
	It is a protocol that is transferring data in a fast way and might loss data along in the process


Which statement is correct for the TCP worker:
	Have you received boxes x, y, z?
	May I increase the rate at which I am sending you boxes?

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 4-TCP_and_UDP_ports:

Write a Bash script that displays listening ports:

That only shows listening sockets

That shows the PID and name of the program to which each socket belongs


	sylvain@ubuntu$ sudo ./4-TCP_and_UDP_ports
	Active Internet connections (only servers)
	Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
	tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
	tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
	tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
	tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
	tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
	tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
	udp        0      0 *:sunrpc                *:*                                 518/rpcbind
	udp        0      0 *:691                   *:*                                 518/rpcbind
	udp        0      0 localhost:723           *:*                                 547/rpc.statd
	udp        0      0 *:60129                 *:*                                 547/rpc.statd
	udp        0      0 *:3845                  *:*                                 562/dhclient
	udp        0      0 *:bootpc                *:*                                 562/dhclient
	udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
	udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
	udp6       0      0 [::]:50038              [::]:*                              562/dhclient
	udp6       0      0 [::]:691                [::]:*                              518/rpcbind
	Active UNIX domain sockets (only servers)
	Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
	unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
	unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
	unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
	unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
	unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
	sylvain@ubuntu$

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 5-is_the_host_on_the_network:

Write a Bash script that pings an IP address passed as an argument.

Requirements:

Accepts a string as an argument

Displays Usage: 5-is_the_host_on_the_network {IP_ADDRESS} if no argument passed

Ping the IP 5 times

Example:


	sylvain@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
	PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
	64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
	64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
	64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
	64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
	64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms
	
	--- 8.8.8.8 ping statistics ---
	5 packets transmitted, 5 received, 0% packet loss, time 4006ms
	rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
	sylvain@ubuntu$
	sylvain@ubuntu$ ./5-is_the_host_on_the_network
	Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
	sylvain@ubuntu$ 
	It is interesting to look at the time value, which is the time that it took for the ICMP request to go to the 8.8.8.8 IP and come back to my host. The IP 8.8.8.8 is owned by Google, and the quickest roundtrip between my computer and Google was 7.57 ms which is pretty fast, which is a sign that the network path between my computer and Google’s datacenter is in good shape. A slow ping would indicate a slow network.
	
	Next time you feel that your connection is slow, try the ping command to see what is going on!

-----------------------------------------------------------------------------------------------------------------------------------------------------
