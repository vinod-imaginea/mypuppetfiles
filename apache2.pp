package { 'apache2':
      name => apache2,
      ensure => installed,
     # port => 8080,
    }
service { 'apache2':
    ensure => running,
    require => Package['apache2']
  }

