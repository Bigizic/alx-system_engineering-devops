# puppet code to update the contents of a file

file { '/tmp-/my_file':
enusre => present,
conent => 'This is a new content'
}
