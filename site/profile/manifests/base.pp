class profile::base {
  ### Creation of users
  user { 'Pierre':
    ensure   => present,
        }
   group { 'GSK':
      ensure  => 'present',
      members => ['Pierre'],
    
        }
### Directory creation 

file { 'c:/tmp':
    ensure => 'directory',
    owner => 'Pierre',
    group => 'GSK',
  }
file { 'c:/tmp/GSK':
    ensure => 'directory',
    owner => 'Pierre',
    group => 'GSK',
  }
  
 ### Permissions 
  acl { 'c:/tmp/GSK':
  permissions => [
   { identity => 'Pierre', rights => ['full'] },
   { identity => 'Local', rights => ['read'] }
 ],
}
 ### Registry changes in order to enable IE enhanced security configuration
 registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
  ensure => present,
  type   => dword,
  data   => "1",
}

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
