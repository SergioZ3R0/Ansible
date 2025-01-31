# **Ansible Role: Network Configuration**

This role manages network interfaces, VLANs, and bridges on Linux-based systems using `nmcli`

---

## **Table of Contents**

1. [Author Information](#author-information)  
2. [Requirements](#requirements)  
3. [Important Notes](#important-notes)  
4. [Usage](#usage)  
5. [Role Variables](#role-variables)  
6. [Example Playbook](#example-playbook)  
7. [Contributing](#contributing-to-ansible-role-network)

---

## **Author Information**

- **Author:** Sergio Cabello (*scabello*)  
- **Contact:** For any questions or concerns, feel free to reach out.

---

## **Requirements**

- **Ansible**: Version 2.9 or higher  
- **Operating System**: Linux-based distributions  
- **Tools**: `nmcli` must be installed on the target system  

> :memo: **Note:** Ensure that `nmcli` is installed before running the role.

---

## **Important Notes**

- The role modifies network interfaces, which may cause temporary disruptions.  
- Always test configurations in a controlled environment before deploying to production.  

> :warning: **Warning:** Incorrect configurations may result in network loss. Ensure you have a recovery method ready.

---

## **Usage**

1. Clone the repository on your Ansible control node:
   ```bash
   git clone http://examplerepo.com
   ```
2. Modify the test playbook to suit your needs:
   ```bash
   cd ansible-role-network
   vi tests/test.yml
   ```
3. Run the playbook:
   ```bash
   ansible-playbook tests/test.yml
   ```

> :bulb: **Tip:** Use `--check` mode to preview changes before applying them.

---

## **Role Variables**

The role provides the following variables to configure network interfaces, VLANs, and bridges.

### **Common Variables**

| Variable        | Description                                      |
|----------------|--------------------------------------------------|
| `conn_name`    | Connection name                                  |
| `type`         | Type of connection (e.g., ethernet, vlan, bridge) |
| `ifname`       | Interface name                                   |
| `ip4`          | IPv4 address                                    |
| `gw4`          | IPv4 gateway (optional)                         |
| `dns4`         | DNS server (optional)                           |
| `dns4_search`  | DNS search domain (optional)                    |
| `method4`      | IP assignment method (`auto` for DHCP, `manual` for static) |
| `state`        | State of the connection (`present` or `absent`)  |

### **VLAN-Specific Variables**

| Variable       | Description                                      |
|---------------|--------------------------------------------------|
| `vlan_id`     | VLAN ID                                         |
| `parent_ifname` | Parent interface name                        |

### **Bridge-Specific Variables**

| Variable           | Description                                      |
|-------------------|--------------------------------------------------|
| `bridge_conn_name` | Bridge connection name                         |
| `bridge_ifname`    | Bridge interface name                          |

> :bulb: **Tip:** Define VLANs and bridges carefully to avoid IP conflicts.

---

## **Example Playbook**

Below is an example playbook using this role:

```yaml
---
- hosts: localhost
  remote_user: root
  roles:
    - role: network
      vars:
        item:
          conn_name: enp0s3
          type: ethernet
          ifname: enp0s3
          ip4: 192.168.1.10
          gw4: 192.168.1.1
          state: present

        item:
          conn_name: vlan10
          type: vlan
          ifname: enp0s3.10
          vlan_id: 10
          parent_ifname: enp0s3
          ip4: 192.168.10.10
          gw4: 192.168.10.1
          state: present

        item:
          conn_name: br0
          type: bridge
          ifname: br0
          ip4: 192.168.20.10
          gw4: 192.168.20.1
          dns4: 8.8.8.8
          dns4_search: example.com
          method4: auto
          state: present
          bridge_conn_name: enp0s3
          bridge_ifname: enp0s3
```

> :memo: **Note:** Adjust the playbook according to your network environment.

---

## **Contributing to ansible-role-network**

We welcome contributions! Follow these steps:

1. Fork the repository and create a new branch.  
2. Make your changes and test them.  
3. Submit a pull request with a detailed description.  
4. Wait for review and approval.  

> :bulb: **Tip:** Ensure your code follows best practices and includes relevant tests.

---

Thank you for contributing to **ansible-role-network**!
