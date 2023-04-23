#Create file in /tmp directory

file {    'school':
  ensure     =>  'present',
  path       =>   '/tmp/school',
  mode      =>   '0744',
  owner     =>   'www-data',
  group     =>   'www-data',
  content   =>   'Code with Puppet'
}
