# HTTPS SSL

## 0-world_wide_web:

Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier, and write a Bash script that will display information about subdomains.


## 1-haproxy_ssl_termination:

“Terminating SSL on HAproxy” means that HAproxy is configured to handle encrypted traffic, unencrypt it and pass it on to its destination.

Create a certificate using certbot and configure HAproxy to accept encrypted traffic for your subdomain www..


# ADVANCED TASKS


## 100-redirect_http_to_httpsL:

Configure HAproxy to automatically redirect HTTP traffic to HTTPS.

100-redirect_http_to_https must be your HAproxy configuration file
