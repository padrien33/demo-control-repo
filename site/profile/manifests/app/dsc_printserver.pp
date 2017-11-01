class profile::app::dsc_printserver {
  dsc_windowsfeature {'featureexample':
  dsc_ensure = 'present'
  dsc_name = 'Web-Server'
  }
}
