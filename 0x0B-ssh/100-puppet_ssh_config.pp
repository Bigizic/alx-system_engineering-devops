#puppet code representation of the 2-ssh_config file

file { '/home/.ssh/config':
ensure  => 'file',
content => "
Host 54.82.132.33
HostName 54.82.132.33
User ubuntu
IdentifyFile ~/.ssh/school
PasswordAuthentication no
",
owner => 'ubuntu',
group => 'ubuntu',
mode  => '0600',
}
