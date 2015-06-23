class role::api inherits role {

  include profile::web_host

  #class { 'profile::web_host': }
  #  virtual_host => 'api.example.com',
  #}

}
