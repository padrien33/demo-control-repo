class profile::firewall {
### CUSTOM APPLICATION FIREWALL RULE
  windows_firewall::exception { 'GSKrule':
    ensure       => present,
    direction    => 'in',
    action       => 'Allow',
    enabled      => 'yes',
    protocol     => 'TCP',
    local_port   => '80',
    display_name => 'GSK FireWall Rule',
    description  => 'Inbound rule example for demo purposes',
    }
  }
