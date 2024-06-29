# kill a process called Kill me now

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
