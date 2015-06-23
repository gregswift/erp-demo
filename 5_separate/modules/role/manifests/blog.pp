class role::blog inherits role {

  include profile_web

  #class { 'profile_web': }
  #  virtual_host => 'blog.example.com',
  #}

}
