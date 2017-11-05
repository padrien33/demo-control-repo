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
  service {'CDPUserSvc':
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
    
  # Disable Downloaded Maps Manager  
  service {'MapsBroker':
    ensure => 'stopped',
    enable   => 'false',
    }
    
        
 # Disable Internet Connection Sharing (ICS)
  service {'SharedAccess':
    ensure => 'stopped',
    enable   => 'false',
    }
    
    
     # Disable Link-Layer Topology Discovery Mapper
  service {'lltdsvc':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Microsoft Account Sign-in Assistant
  service {'wlidsvc':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Microsoft Account Sign-in Assistant
  service {'NgcSvc':
    ensure => 'stopped',
    enable   => 'false',
    }
    
    
  # Disable Microsoft Passport Container
  service {'NgcCtnrSvc':
    ensure => 'stopped',
    enable   => 'false',
    }
    
  # Disable Phone Service
  service {'PhoneSvc':
    ensure => 'stopped',
    enable   => 'false',
    }    

  # Disable Printer Extensions and Notifications
  service {'PrintNotify':
    ensure => 'stopped',
    enable   => 'false',
    }

  # Disable Program Compatibility Assistant Service
  service {'PcaSvc':
    ensure => 'stopped',
    enable   => 'false',
    }  

  # Disable Quality Windows Audio Video Experience
  service {'QWAVE':
    ensure => 'stopped',
    enable   => 'false',
    }  

  # Disable Radio Management Service
  service {'RmSvc':
    ensure => 'stopped',
    enable   => 'false',
    }  
    
  # Disable Sensor Data Service
  service {'SensorDataService':
    ensure => 'stopped',
    enable   => 'false',
    }  
    
  # Disable Sensor Monitoring Service
  service {'SensrSvc':
    ensure => 'stopped',
    enable   => 'false',
    }      

  # Disable SensorService
  service {'SensorService':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
  # Disable Shell Hardware Detection
  service {'ShellHWDetection':
    ensure => 'stopped',
    enable   => 'false',
    }  
  # Disable Smart Card Device Enumeration Service
  service {'ScDeviceEnum':
    ensure => 'stopped',
    enable   => 'false',
    }  
   # Disable SSDP Discovery
  service {'SSDPSRV':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
   # Disable Still Image Acquisition Events
  service {'WiaRpc':
    ensure => 'stopped',
    enable   => 'false',
    }        

   # Disable Touch Keyboard and Handwriting Panel Service
  service {'TabletInputService':
    ensure => 'stopped',
    enable   => 'false',
    }  
    
   # Disable UPnP Device Host
  service {'upnphost':
    ensure => 'stopped',
    enable   => 'false',
    }   
   
    
  # Disable WalletService
  service {'WalletService':
    ensure => 'stopped',
    enable   => 'false',
    }      

  # Disable Windows Audio
  service {'Audiosrv':
    ensure => 'stopped',
    enable   => 'false',
    } 

  # Disable Windows Audio Endpoint Builder
  service {'AudioEndpointBuilder':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
  # Disable Windows Camera Frame Server
  service {'FrameServer':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
  # Disable Windows Image Acquisition (WIA)
  service {'stisvc':
    ensure => 'stopped',
    enable   => 'false',
    } 

  # Disable Windows Insider Service
  service {'wisvc':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
  # Disable Windows Mobile Hotspot Service
  service {'icssvc':
    ensure => 'stopped',
    enable   => 'false',
    } 
    
      

}

