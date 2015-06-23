node default {
    include base_config
    include base_puppet
    include base_auth
}

node "blog1.example.com" inherits base {
       include base_blog
}
