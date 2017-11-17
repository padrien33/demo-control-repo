class profile::dsc_test {

dsc_user { 'PAdrien':
    dsc_username             => 'PAdrien',
    dsc_description          => 'Create user Adrien',
    dsc_ensure               => present,
    dsc_password             => {
      'user'     => 'DMullin',
      'password' => 'p@ssw0rd!',
    },
    dsc_passwordneverexpires => false,
    dsc_disabled             => false, ## disable/enable a user account
  }


}
