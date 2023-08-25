# a pp script that kills a process named killmenow
exec { 'kill_process':
command => 'pkill -f killmenow',
onlyif  => 'pgrep -f killmenow',
path    => '/usr/bin',
}
