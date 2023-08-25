# puppet code to delete a file

file { '/tmp/my_file':
ensure => absent,
}
