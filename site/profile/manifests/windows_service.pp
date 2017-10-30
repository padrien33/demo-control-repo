class profile::windows_service {
  service {'WpnService':
    ensure => 'false',
    }
  service {'NcbService':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'Spooler':
    ensure => 'stopped',
    enable   => 'false',
    }
}

