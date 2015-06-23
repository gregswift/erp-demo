class role::api inherits role {

  include profile_web

  #class { 'profile_web': }
  #  virtual_host => 'api.example.com',
  #}

}
