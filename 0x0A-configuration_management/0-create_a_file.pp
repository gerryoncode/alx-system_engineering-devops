file {'/tmp/school':
  path               => '/tmp/school',
  content            => 'I love puppet',
  group              => 'www-data',
  owner              => 'www-data',
  mode               => '0744',
}
