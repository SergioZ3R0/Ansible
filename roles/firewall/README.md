Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - name: Configure firewall rules using the firewall role
      hosts: all
      become: yes
      roles:
        - role: firewall
          firewall_allow_ports:
            - 22
          firewall_deny_ports:
            - 80
          firewall_redirect_ports:
            - { src: 8080, dest: 80 }
          firewall_allow_ips:
            - 192.168.1.1
          firewall_deny_ips:
            - 10.0.0.1

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
