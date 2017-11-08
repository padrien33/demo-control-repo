class profile::baseline {
      include::profile::firewall
      include::profile::motd
      include::profile::registry
      include::profile::windows_service

}
