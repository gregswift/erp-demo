node default {
    include role
}

node /blog[0-9].example.com/{
       include role::blog
}

node /api[0-9].example.com/{
       include role::api
}
