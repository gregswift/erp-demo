class base_blog {

  class { 'nginx': }

  nginx::resource::vhost { 'blog.example.com':
    ensure             => present,
    location_allow     => ['all'],
    proxy_read_timeout => '300',
    www_root           => '/var/www/html',
  }


}
