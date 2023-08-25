# puppet code to change permissison of a file

file { '/tmp/my_file':
enusre => present,
mode   => '0644', # use mode to change the permission of the file
}
