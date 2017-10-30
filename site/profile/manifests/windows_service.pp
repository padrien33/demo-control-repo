class profile::windows_service {
  service { 'WpnService':
    ensure => 'stopped',
    enable => true,
}
}

