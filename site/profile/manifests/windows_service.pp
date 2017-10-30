class profile::windows_service {
  service {'WpnService':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'NcbService':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'Spooler':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'AxInstSV':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'bthserv':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'CDPUserSvc':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'lfsvc':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'dmwappushservice':
    ensure => 'stopped',
    enable   => 'false',
    }
  service {'MapsBroker':
    ensure => 'stopped',
    enable   => 'false',
    }
}

