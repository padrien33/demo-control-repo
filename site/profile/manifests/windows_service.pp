class profile::windows_service {
  service {'WpnService':
    ensure => 'stopped',
    }
  service {'NcbService':
    ensure => 'stopped',
    }
  service {'Spooler':
    ensure => 'stopped',
    enable   => 'true',
    }
}

