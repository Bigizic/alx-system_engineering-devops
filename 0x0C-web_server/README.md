# 0x0C. Web server READ ALSO:

<a href="https://github.com/Bigizic/alx-system_engineering-devops/master/0x0C-web_server/WEB_SERVER_CONFIG.md">WEB_SERVER_CONFIG</a>

## General:

| Questions | Answers |
| --- | ---- |
| What is the main role of a web server | to store and serve static content to users who request it. |
| What is a child process | this is a process created by another process, the root process is called parent process or creator process. To view proccess along with their Child process try `ps axf` | 
| Why web servers usually have a parent process and child processes | to handle multiple incoming client requests simultaneously |
| What are the main HTTP requests | Get, Post, Put, Delete, Patch, Head, Options |

| Main http requests | uses |
| ---- | ---- |
| Get | This request is used to retrieve data from the server. When a client sends a get request it asks the web server to send back the resource the client requested for |
| Post | This requests are used to send data to the server, e.g to submit a form on a website. Just like filling some input fields|
| Put | This requests are used to update or create a resource on the server on a specific url. Just like putting something on the server, e.g imagine a user updating their profile on a website they send the updated data or save the updated data, this is them sending a put request to the server to update or create a resource already on the server |
| Delete | This requests are used to request a removal of a resource from the server at a specific website |
| Patch | This requests are used to apply partial modifications to a resource on the server. Just like the name implies patch(partial modifications). Application of this request involves: a user that'd like to edit specific fields or attributes of a resource but not edit everything, rather than sending the complete resource data again, they just edit one or two fields. |
| Options | This requests are used to request information about the communication options available for a specific url e.g: a developer is building a frontend application that interacts with another api to manage user accounts and the developer would like to know what http methods and headers are supported by the api for the user resource, the developer can make an options request to the api endpoint for the user to retrieve this information. The options request might look like this" `OPTIONS /api/users HTTP/1.1 Host: johndoe.com` The server response might look like this: `HTTP/1.1 200 ok\nAllow: GET, POST, PUT, DELETE\nAccess-Control-Allow-Methods: GET, POST, PUT, DELETE\nAccess-Control-Allow-Headers: Authorization, Content-Type` |
| Header | This request only asks for the header of the retrieved response, not the actual content, it's similar to a `Get` request but only retrieve the metadata about a resource without transferring the full content like a `Get` request |


# TASKS:

## 0-transfer_file:

Write a Bash script that transfers a file from our client to a server:

Requirements:

1. Accepts 4 parameters

- The path to the file to be transferred

- The IP of the server we want to transfer the file to

- The username scp connects with

- The path to the SSH private key that scp uses

2. Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed

3. scp must transfer the file to the user home directory ~/

4. Strict host key checking must be disabled when using scp

## 1-install_nginx_web_server:

Web servers are the piece of software generating and serving HTML pages, let’s install one!

Requirements:

1. Install nginx on your web-01

2. server

3. Nginx should be listening on port 80

4. When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!

5. As an answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself)

6. You can’t use systemctl for restarting nginx


## 2-setup_a_domain_name:

.TECH Domains is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. We partnered with .TECH Domains so that you can learn about DNS.

.TECH Domains worked with domain name registrars to give you access to a free domain name for a year. Please get the promo code in your tools space. Feel free to drop a thank you tweet for .TECH Domains.

Provide the domain name in your answer file.

Requirement:

1. provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech)

2. configure your DNS records with an A entry so that your root domain points to your web-01 IP address Warning: the propagation of your records can take time (~1-2 hours)

3. go to your profile and enter your domain in the Project website url field


## 3-redirection:

Readme:

- Replace a line with multiple lines with sed

Configure your Nginx server so that /redirect_me is redirecting to another page.

Requirements:

1. The redirection must be a “301 Moved Permanently”

2. You answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements

3. Using what you did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task


## 4-not_found_page_404:

Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page.

Requirements:

1. The page must return an HTTP 404 error code

2. The page must contain the string Ceci n'est pas une page

3. Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task

To list a domain ip address use:

	nslookup -q=A {domain_name.com}

To send files through scp you need to send your public key to the receiver server use this comand to copy your public key and send to the receiver server

	ssh-copy-id -i {path to your public_key} {username of receiver server}@{recever_server_ip}

This command allows your public key to be stored as authorised keys in the receiver end

or manually send your public address to the receiver have them save your public key in their authorised key file
