class profile_system (
  Array $ssh_groups,
  Array $sudo_groups,
  String $repo_server,
)  {

    include sshd
    sshd_config { 'PermitRootLogin':
        ensure => present,
        value  => 'No',
        notify => service['sshd'],
    }

    sshd_config { 'AllowGroups':
        ensure => present,
        value  => $ssh_groups,
    }

    class { 'sudo::allow':
        add_groups     => $sudo_groups,
        replace_users  => [],
        replace_groups => $sudo_groups,
    }

    yumrepo { "local_mirror":
        baseurl  => "${repo_server}/repos/rhel/\$releasever/",
        descr    => "Local Mirror of RHEL",
        enabled  => 1,
        gpgcheck => 0,
    }

}
