node default {
     class { 'ntp':
     servers => ['time-a.nist.gov', 'pool.ntp.org'],
     }

      $nameservers = ['10.22.2.10', '8.8.8.8']
      $domain = ['wcbc.local']

      file { '/etc/resolv.conf':
            ensure  => file,
	    owner   => 'root',
	    group   => 'root',
	    mode    => '0644',
	    content => template('resolver/resolv.conf.erb'),}

}
