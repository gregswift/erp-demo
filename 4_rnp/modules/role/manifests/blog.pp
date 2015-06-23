class role::blog inherits role {

  include profile::web_host

  #class { 'profile::web_host': }
  #  virtual_host => 'blog.example.com',
  #}

}
