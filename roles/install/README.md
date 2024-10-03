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

    ----
    - name: Aplicar rol de instalación de software
      hosts: all
      become: yes
      vars:
        apt_packages:
          - git
          - curl
        yum_packages:
          - git
          - curl
        pip_packages:
          - boto3
          - requests
      roles:
        - role: instalacion_software


License
-------

BSD

Author Information
------------------

SergioZ3R0
