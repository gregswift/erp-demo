class profile_web (
  String $virtual_host,
  String $webroot = '/var/www/html',
) {

  class { 'nginx': }

  nginx::resource::vhost { $virtual_host:
    ensure             => present,
    location_allow     => ['all'],
    proxy_read_timeout => '300',
    www_root           => $webroot,
  }

}
