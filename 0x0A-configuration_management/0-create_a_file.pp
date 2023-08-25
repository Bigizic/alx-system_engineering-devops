# this puppet script creates a file in /tmp directory sets
# a permission to the file, sets a owner to the file, set a group
# to the file and write some contents inside the file

file { '/tmp/school':
ensure  => present,
content => 'I love Puppet', # writes content
owner   => 'www-data', # sets owner
group   => 'www-data', # sets group
mode    => '0744', # sets permission mode
}
