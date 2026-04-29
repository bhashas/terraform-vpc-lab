🏗️ Architecture du projet

```text
           +----------------------+
           |   Terraform         |
           | (Provisioning)      |
           +----------+----------+
                      |
                      v
        +---------------------------+
        |  Infrastructure (VMs)     |
        |  - Linux Servers         |
        |  - Network configuration  |
        +------------+-------------+
                     |
                     v
           +----------------------+
           |     Ansible         |
           | (Configuration)     |
           +----------+----------+
                      |
                      v
     +--------------------------------+
     |  Environnement final           |
     |  - Packages installés         |
     |  - Sécurité appliquée         |
     |  - Services configurés        |
     +--------------------------------+
