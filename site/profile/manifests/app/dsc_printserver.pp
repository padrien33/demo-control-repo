class profile::app::dsc_printserver {
  dsc_windowsfeature {'Print':
    dsc_ensure => 'present',
    dsc_name   => 'Print-Server',
  }
}
