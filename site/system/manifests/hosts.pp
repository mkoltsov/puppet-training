class system::hosts {
resources {'host':
purge => true,
}
host { 'master.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['puppet'],
  ip           => '172.17.0.1',
  target       => '/etc/hosts',
}
host { 'localhost':
  ensure => 'present',
  ip     => '127.0.0.1',
  target => '/etc/hosts',
}
## Use your own IP, or the ::ipaddress fact
host { 'mkoltsov.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['mkoltsov'],
  ip           => '172.17.0.3',
  target       => '/etc/hosts',
}
}