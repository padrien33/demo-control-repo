class profile::windows_service {
  service {'WpnService':
    ensure => 'stopped',
    }
  service {'NcbService':
    ensure => 'stopped',
    }  
}

