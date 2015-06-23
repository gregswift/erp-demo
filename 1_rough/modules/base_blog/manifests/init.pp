class base_blog {

    package { 'nginx':
        ensure => 'present',
    }

    service { 'nginx':
        ensure => 'present',
        require => Packagep['nginx'],
    }

    file { '/etc/nginx/conf.d/blog.conf':
        ensure  => present,
        source  => file('puppet:///modules/base_blog/blog.conf'),
        require => Package['nginx'],
        notify  => Service['nginx'],
    }


}
