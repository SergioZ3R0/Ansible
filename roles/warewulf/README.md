Warewulf
=========

This role manages the configuration of Warewulf, including setting up YUM local repositories, configuring hosts, chrony, and Apache virtual hosts.

Requirements
------------

- Ansible 2.9 or higher
- Access to the target hosts with necessary privileges
- Rocky Linux 8.4 or higher

Important
----------
#### REMEMBER: To run this playbook you need to do a symbolic link to the roles directory

    -mkdir -p /root/.ansible/roles
    -ln -s /root/Ansible/roles/warewulf /root/.ansible/roles/warewulf.

Role Variables
--------------

- [vars](vars/main.yml)
- Playbook Variables:
- server_name: The server name for the Apache virtual host.
- server_alias: The server alias for the Apache virtual host.

Dependencies
------------

No dependencies on other roles

Configuration Files
------------

- [hosts.j2](confFiles/hosts.j2)
- [chorny.conf.j2](confFiles/chrony.conf.j2)
- [000-default.conf.j2](confFiles/000-default.conf.j2)
- [local.cfg.j2](confFiles/local.cfg.j2)
- [warewulf.conf.j2](confFiles/warewulf.conf.j2)
- [containerHosts.j2](confFiles/containerHosts.j2)

Playbooks
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- [Head Node Deploy](tests/headNodeComplete.yml)
- [Warewulf Install and Configure](tests/warewulfInstall.yml)

License
-------

BSD

Author Information
------------------

## SergioZ3R0
