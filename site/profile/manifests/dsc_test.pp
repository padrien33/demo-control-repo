class profile::dsc_test {

dsc_user { 'Henry':
    dsc_username             => 'Henry',
    dsc_description          => 'Create user Adrien',
    dsc_ensure               => present,
    dsc_password             => {
      'user'     => 'Henry',
      'password' => 'p@ssw0rd!',
    },
    dsc_passwordneverexpires => false,
    dsc_disabled             => false, ## disable/enable a user account
  }


}
