# creates a file in /tmp

file {'/tmp/school':
  content            => 'I love puppet',
  group              => 'www-data',
  owner              => 'www-data',
  mode               => '0744',
}
