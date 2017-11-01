class profile::app::dsc_PrintServer {
dsc_windowsfeature {'featureexample':
  dsc_ensure = 'present'
  dsc_name = 'Print-Server'
  }
}
