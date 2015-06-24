# Embracing Roles and Profiles

This repository is complementary to my prezi on the subject.

https://prezi.com/yehnstgdftbq/embracing-roles-and-profiles/

## 1_rough

This set of bits is supposed to represent the early stages of one's foray
into writing puppet bits.

* No 3rd party libraries
* Modules are a cluster of several different things
* Node definitions are inherited

## 2_reuse

Typically the next step in puppet. Using other people's modules, or at least
making component specific modules yourself.

* Using augeasprovides's sshd_config
* Using saz/sudo module
* Using jfryman/nginx

## 3_hubris

This was my first run at Roles&Profiles implementation. I decided I only
needed one level, so ended up with a module called role that acts like
profiles, with a mix of underlying module implementations.

* Node definitions now bring in roles

## 4_erp

In my view, this is the purer implementation of Roles and Profiles in the
spirit of Craig Dunn's blog posts on the subject.

* Roles is a module, and its classes only include profiles
* Profiles is also a module, taking 1 or more modules and providing a
   re-usable implementation.

## 5_separate

Due to the GIT workflow issues we ran into while running 3_hubris, we
decided that when we implemented Roles and Profiles we would do profiles
as separate modules, prefixed with profile_. Such as profile_system,
profile_java_app_server, profile_zabbix, etc.  The goal it to help
facilitate fast iteration on individual pieces, without forcing a more
long running change from having a weird workflow or getting promoted too
early.  With a good implementation of Roles and Profiles, Roles are very
minimal and can stay in a single module.  This does not negate the concept
of separating role sets into separate modules, such as role_myplatform.