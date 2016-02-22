$my_file_arg = '/tmp/myarg.txt'

file { $my_file_arg:
  content => "Hello now",
}

exec {"Use $my_file_arg":
  require => File[$my_file_arg],
  command => "/bin/sed -i s/Hello/Bye/g $my_file_arg",
}

