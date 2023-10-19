# puppet manifest to fix failing requests in a server

exec { 'fix-for-nginx':
  command => "bash -c \"sed -iE 's/^ULIMIT=.*/ULIMIT=\\\"-n 8192\\\"/' /etc/default/nginx; service nginx restart\"",
  path    => '/usr/bin:/usr/sbin:/bin',
  onlyif  => "test $(grep '^ULIMIT=\"-n 8192\"' /etc/default/nginx | wc -l) -eq 0",
}
