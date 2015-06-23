class base_config {

    file { '/etc/ssh/sshd_config':
        ensure => present,
        source => 'puppet:///modules/base_config/sshd_config',
        notify => 'sshd',
    }
    service { 'sshd':
        ensure  => running,
        enabled => true,
    }

    file { '/etc/sudoers':
        ensure => present,
        source => 'puppet:///modules/base_config/sudoers',
    }

    file { 'etc/yum.repos.d/local_miror.repo':
        ensure => present,
        source => 'puppet:///modules/base_config/local_mirror.repo',
    }

}
