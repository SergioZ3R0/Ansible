Role Name
=========

This role manages the configuration of Warewulf, including setting up YUM local repositories, configuring hosts, chrony, and Apache virtual hosts.

Requirements
------------

- Ansible 2.9 or higher
- Access to the target hosts with necessary privileges
- Rocky Linux 8.4 or higher

Role Variables
--------------

- [vars](vars/main.yml)
- Playbook Variables:
- repos_ip: The IP address of the repository server (default: 192.168.1.1).
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

Playbooks
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- [Head Node Deploy](tests/headNodeComplete.yml)

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
