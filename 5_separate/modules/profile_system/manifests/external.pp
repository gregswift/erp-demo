class profile_system::external inherits profile_system {

    sshd_config { 'AllowGroups':
        ensure => present,
        value  => ['admins'],
    }

}
