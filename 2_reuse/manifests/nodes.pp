node default {
    include base_config
    include base_puppet
    include base_auth
}

node /blog[0-9].example.com/ inherits default {
       include base_blog
}
