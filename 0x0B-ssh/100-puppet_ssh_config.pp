#puppet code representation of the 2-ssh_config file

file {'/.ssh/config':
ensure  => 'file',
content => "
Host server297651-web-01
HostName 54.82.132.33
User ubuntu
IdentityFile ~/.ssh/school
PasswordAuthentication no
",
}
