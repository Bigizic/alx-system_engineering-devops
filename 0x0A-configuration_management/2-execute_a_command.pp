# a pp script that kills a process named killmenow
class kill_me_now {
exec { 'kill_process':
command => 'pkill -f killmenow',
onlyif  => 'pgrep -f killmenow',
path    => '/usr/bin',
}
}

include kill_me_now
