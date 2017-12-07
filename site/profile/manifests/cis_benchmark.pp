class profile::cis_benchmarks{



 $cis_ssh_settings ={
 '(5.2.2) - Ensure SSH Protocol is set to 2 (Scored)'=>'Protocol 2',
 '5.2.3 Ensure SSH LogLevel is set to INFO (Scored)'=>'LogLevel INFO',
       '5.2.4 Ensure SSH X11 forwarding is disabled (Scored)'=>'X11Forwarding no',
      '5.2.5 Ensure SSH MaxAuthTries is set to 4 or less (Scored)'=>'MaxAuthTries 4',
       '5.2.6 Ensure SSH IgnoreRhosts is enabled (Scored)'=>'IgnoreRhosts yes',
       '5.2.7 Ensure SSH HostbasedAuthentication is disabled (Scored)'=>'HostbasedAuthentication no',
       '5.2.8 Ensure SSH root login is disabled (Scored)'=>'PermitRootLogin no',
       '5.2.9 Ensure SSH PermitEmptyPasswords is disabled (Scored)'=>'PermitEmptyPasswords no',
       '5.2.10 Ensure SSH PermitUserEnvironment is disabled (Scored)'=>'PermitUserEnvironment no',
       '5.2.11 Ensure only approved ciphers are used (Scored)'=>'Ciphers aes256-ctr,aes192-ctr,aes128-ctr',
       '5.2.12 Ensure only approved MAC algorithms are used (Scored)'=>'# MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openss    h.com,umac-128- etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com',
       '5.2.13 Ensure SSH Idle Timeout Interval is configured (Scored), interval'=>'ClientAliveInterval 300',
       '5.2.13 Ensure SSH Idle Timeout Interval is configured (Scored), countmax'=>'ClientAliveCountMax 4',
       '5.2.14 Ensure SSH LoginGraceTime is set to one minute or less (Scored)'=>'LoginGraceTime 60',
       '5.2.16 Ensure SSH warning banner is configured (Scored)'=>'Banner /etc/issue.net',
    }
   class {'::cis_benchmarks::redhat7::rule::v_2_1_1::rule_5_2' :
     manage_ssh       => true,
     cis_ssh_settings => $cis_ssh_settings,
   }
  class{ '::cis_benchmarks':
     cis_version   => 'v_2_1_1',
     exec_controls => $exec_controls,
   }

}
