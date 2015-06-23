class base_config {

    include sshd
    sshd_config { 'PermitRootLogin':
        ensure => present,
        value  => 'No',
        notify => service['sshd'],
    }

    class { 'sudo::allow':
        add_groups     => ['admins'],
        replace_users  => [],
        replace_groups => ['admins'],
    }

    yumrepo { "local_mirror":
        baseurl  => "${server}/repos/rhel/\$releasever/${repo}/",
        descr    => "Local Mirror of RHEL",
        enabled  => 1,
        gpgcheck => 0,
    }

}
