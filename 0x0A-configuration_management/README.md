# INTRODUCTION TO PUPPET CODES

##: Puppet code allows you to perform a wide range of operations related to system configuration, automation, and management

## Key operations you can accomplish using puppet code:

1. You can use Puppet code to define and manage the installation and removal of software packages on your systems.

2. Puppet can help you manage configuration files by defining their content, structure, and permissions.

3. Puppet can control services, ensuring they are running, stopped, or restarted as needed

4. You can use Puppet to manage user accounts and groups, including creating, modifying, and removing them

5. Puppet can automate the process of updating packages and applying security patches, helping to keep your systems up to date

6. You can define firewall rules using Puppet code to control network traffic and security settings

7. Puppet can ensure the existence and attributes of files and directories on your systems. This is helpful for deploying files, templates, and other resources

# TASKS:

## 0-create_a_file.pp:

Using Puppet, create a file in /tmp.

Requirements:

File path is /tmp/school

File permission is 0744

File owner is www-data

File group is www-data

File contains I love Puppet


## 1-install_a_package.pp:

Using Puppet, install flask from pip3.

Requirements:

Install flask

Version must be 2.1.0


## 2-execute_a_command.pp:

Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

Must use the exec Puppet resource

Must use pkill
