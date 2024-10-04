Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------
    ----
    ec2_key_name: "mi_clave_ec2"
    ec2_instance_type: "t2.micro"
    ec2_image: "ami-0abcdef1234567890"
    ec2_region: "us-west-2"
    ec2_security_group: "mi_grupo_seguridad"
    vpc_name: "mi_vpc"
    vpc_cidr: "10.0.0.0/16"
    s3_bucket_name: "mi_bucket_s3"

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:


    - name: Aplicar rol de gestión de recursos en la nube
      hosts: localhost
      become: yes
      roles:
        - role: gestion_recursos_nube
      vars:
        ec2_key_name: "mi_clave_ec2"
        ec2_instance_type: "t2.micro"
        ec2_image: "ami-0abcdef1234567890"
        ec2_region: "us-west-2"
        ec2_security_group: "mi_grupo_seguridad"
        vpc_name: "mi_vpc"
        vpc_cidr: "10.0.0.0/16"
        s3_bucket_name: "mi_bucket_s3"

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
