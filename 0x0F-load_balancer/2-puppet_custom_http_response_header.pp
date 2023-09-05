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
}

# Add a custom HTTP header response
file { '/etc/nginx/sites-available/custom-header':
ensure  => present,
content => '
server {
listen 80 default_server;
server_name _;

location / {
add_header X-Custom-Header "This is a custom header";
root   /var/www/html;
index  some_page.html;
}
}
',
require => Package['nginx'],
}

# Enable the custom header site
file { '/etc/nginx/sites-enabled/custom-header':
ensure  => link,
target  => '/etc/nginx/sites-available/custom-header',
require => File['/etc/nginx/sites-available/custom-header'],
}

# Ensure Nginx service is running and reload configuration when necessary
service { 'nginx':
ensure     => running,
hasrestart => true,
require    => [Package['nginx'], File['/etc/nginx/sites-available/custom-header']],
}
