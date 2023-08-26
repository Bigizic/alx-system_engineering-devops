#puppet code representation of the 2-ssh_config file

exec {'/.ssh/config':
ensure  => 'file',
content => "
Host 54.82.132.33
User ubuntu
IdentityFile ~/.ssh/school
PasswordAuthentication no
",
}
