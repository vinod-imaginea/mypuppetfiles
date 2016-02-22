file {'/tmp/test':
       ensure => directory,
       mode   => 0750,
       owner  => root,
       group  => root,
     }
file {'/tmp/test/file1':
       ensure  => present,
       mode    => 0644,
       content => 'This is my first file in test directory',
    }
file {'/tmp/test/file2':
       ensure  => present,
       mode    => 0644,
       content => "My Hostname is:${hostname} ,ipaddress: ${ipaddress}",
     }


