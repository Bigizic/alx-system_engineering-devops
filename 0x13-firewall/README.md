# Firewall
## READ ALSO <a href="https://github.com/Bigizic/alx-system_engineering-devops/blob/master/0x13-firewall/ufw_essentials.md">Ufw Essentials</a>

* ``What is a firewall``: A firewall is a hardware or software security system used by web servers

  or app servers to monitor, filter incoming and outgoing http traffic.

## Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.


## 0-block_all_incoming_traffic_but:

Let’s install the ufw firewall and setup a few rules on web-01.

## 100-port_forwarding:

Firewalls can not only filter requests, they can also forward them.

Requirements:

- [X] Configure {server name} so that its firewall redirects port 8080/TCP to port 80/TCP.

- [X] Your answer file should be a copy of the ufw configuration file that you modified to make this happen

Terminal on {first web server}:

