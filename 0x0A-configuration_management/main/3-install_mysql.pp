# puppet code to install mySQL
exec { 'install_mysql':
command => 'sudo apt-get install -y mysql-server',
path    => '/usr/bin',
onlyif  => 'which mysql' # check if mysql is available
}
