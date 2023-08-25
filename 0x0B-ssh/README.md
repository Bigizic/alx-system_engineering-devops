A server is a computer or a system that provides services, resources, or data to other computers, known as clients, over a network. Servers are designed to handle specific tasks, such as hosting websites, storing and managing data, running applications, and more. They typically have more computing power, memory, and storage than client computers.

Servers usually live in data centers, which are specialized facilities equipped with the necessary infrastructure to support and maintain servers. Data centers provide features like cooling, backup power, and security to ensure the continuous operation of servers. Servers can also be hosted in the cloud, where they are managed by cloud service providers.

SSH, or Secure Shell, is a cryptographic network protocol used to securely access and manage remote servers over an unsecured network. It provides encrypted communication between the client (your computer) and the server, preventing unauthorized access and eavesdropping. SSH is commonly used for tasks like remote command execution, file transfers, and managing server configurations.

Using #!/usr/bin/env bash instead of /bin/bash at the beginning of a script is advantageous because it allows the script to be executed using the user's preferred interpreter. The env command searches for the bash executable in the user's PATH environment variable, ensuring compatibility across different systems. This can be useful when the exact location of the bash executable may vary on different systems. Using /bin/bash directly assumes a fixed location for the bash executable, which might not be accurate on all systems.

## TASKS:

### 0-use_a_private_key:

Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

Requirements:

Only use ssh single-character flags

You cannot use -l

You do not need to handle the case of a private key protected by a passphrase

	sylvain@ubuntu$ ./0-use_a_private_key
	ubuntu@server01:~$ exit
	Connection to 8.8.8.8 closed.
	sylvain@ubuntu$ 


### 1-create_ssh_key_pair:

Write a Bash script that creates an RSA key pair.

Requirements:

Name of the created private key must be school

Number of bits in the created key to be created 4096

The created key must be protected by the passphrase betty

EXAMPLE:

	sylvain@ubuntu$ ls
	1-create_ssh_key_pair
	sylvain@ubuntu$ ./1-create_ssh_key_pair
	Generating public/private rsa key pair.
	Your identification has been saved in school.
	Your public key has been saved in school.pub.
	The key fingerprint is:
	5d:a8:c1:f5:98:b6:e5:c0:9b:ee:02:c4:d4:01:f3:ba vagrant@ubuntu
	The key's randomart image is:
	+--[ RSA 4096]----+
	|      oo...      |
	|      .+.o =     |
	|     o  + B +    |
	|      o. = O     |
	|     .. S = .    |
	|      .. .       |
	|      E.  .      |
	|        ..       |
	|         ..      |
	+-----------------+
	sylvain@ubuntu$ ls
	1-create_ssh_key_pair school  school.pub
	sylvain@ubuntu$ 


### 2-ssh_config:

Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school

Your SSH client configuration must be configured to refuse to authenticate using a password
