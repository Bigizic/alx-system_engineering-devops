# a puppet manifest that installs nginx on a new server and
# configures a custom HTTP header response

# Ensure the Nginx package is present
package { 'nginx':
ensure => present,
name   => 'nginx',
}

# Create the some_page.html file with custom content
file { '/var/www/html/some_page.html':
ensure  => present,
path    => '/var/www/html/some_page.html',
content => 'Hello World!',
require => Package['nginx'],
}

# Add a custom HTTP header response
file { '/etc/nginx/sites-available/default':
ensure  => present,

after   => 'listen 80 default_server;',
line    => 'add_header X-Served-By $hostname;',
require => Package['nginx'],
}

# ensure nginx is running
service { 'nginx':
ensure  => running,
require => Package['nginx'],
}
