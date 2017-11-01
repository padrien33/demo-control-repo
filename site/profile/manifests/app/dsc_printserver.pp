class profile::app::dsc_printserver {
  dsc_windowsfeature {'Print':
    dsc_ensure => 'present',
    dsc_name   => 'Print-Server',
  } 
  dsc_windowsfeature {'IISConsole':
    dsc_ensure => 'present',
    dsc_name   => 'Web-Mgmt-Console',
  }
}
