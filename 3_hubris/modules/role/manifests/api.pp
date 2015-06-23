class role::api inherits role {

  class { 'nginx': }

  nginx::resource::vhost { 'api.example.com':
    ensure             => present,
    location_allow     => ['all'],
    proxy_read_timeout => '300',
    www_root           => '/var/www/html',
  }


}
