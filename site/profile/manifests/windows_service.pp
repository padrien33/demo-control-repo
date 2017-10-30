class profile::motd {
  service { 'WpnService':
    ensure => 'stopped',
    enable => true,
}
}

