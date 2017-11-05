class profile::wannacry {
  #Tested on Windows 2012 R2

  exec { 'Disable SMBv1 Protocol':
    command   => "Set-SmbServerConfiguration -EnableSMB1Protocol $false -force",
    provider  => powershell,
    unless    => "if (Get-SmbServerConfiguration | Select EnableSMB1Protocol) { exit 0 } else { exit 1 }",
  }

  exec { 'Remove SMBv1 Feature':
    command   => "Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol",
    provider  => powershell,
    unless    => "if (Get-WindowsOptionalFeature -Online -FeatureName smb1protocol) { exit 0 } else { exit 1 }",
  }
}
