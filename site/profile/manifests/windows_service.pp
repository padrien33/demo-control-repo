class profile::windows_service {

  # Disable Windows Push Notifications System Service
  service {'WpnService':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Network Connection Broker 
  service {'NcbService':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Print Spooler
  service {'Spooler':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable ActiveX Installer (AxInstSV)  
  service {'AxInstSV':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Bluetooth Support Service  
  service {'bthserv':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable CDPUserSvc  
  service {'CDPUserSvc_28b80f':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Geolocation Service  
  service {'lfsvc':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable dmwappushsvc
  service {'dmwappushservice':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Downloaded Maps Manager  
  service {'MapsBroker':
    ensure => 'stopped',
    enable   => 'false',
    }
}

