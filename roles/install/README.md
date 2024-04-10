Role Name
=========

A role to intall all the packages you want on different devices of your network

Requirements
------------

Any

Role Variables
--------------

# vars file for install
apache2_install: false
mysql_install: false

Dependencies
------------

Any

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: www
          become: true
          tasks:
            - name: Instalar Apache2 usando el rol 'install'
              include_role:
                name: install
                tasks_from: main.yml
              vars:
                apache2_install: true
                mysql_install: true


License
-------

BSD

Author Information
------------------

SergioZ3R0
