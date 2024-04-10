Role Name
=========

A role to intall all the packages you want on different devices of your network

Requirements
------------

Any

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

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
