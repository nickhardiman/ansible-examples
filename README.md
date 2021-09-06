# ansible-examples

These are my little playbooks, to remind me how Ansible tasks behave.
Read it, run it, edit it, play with it. 

They all run on localhost. No network required. 

## What are these?

There are about 100 little playbooks here.
Each one is about an ansible thing, like a play, a directive or a variable type. 
They all run locally and demonstrate how a little bit of ansible behaves. 
The playbooks are simple - no roles, no SSH, no remote hosts and mostly no privilege escalation (one exception is module-user.yml).

### getting started 

* `sudo dnf install ansible git` 
* `git clone https://github.com/nickhardiman/ansible-examples`
* `cd ansible-examples`
* `ansible-playbook directive-gather_facts.yml`

### playbook 

Each file name provides a clue about what the playbook does. 
Inside each file is a description of how you run it and what it does.

The `filter-union.yaml` file has a few tasks using the 'union' filter. 
Run it like this. 
`ansible-playbook filter-union.yml` 

### inventory 

Most playbooks read the inventory file _inventory-localhost.yml_.
This is set by the line `inventory=inventory-localhost.yml` in ansible.cfg.

### configuration

Most playbooks read the default configuration file _ansible.cfg_.

There are a few variations on configuration files in the same directory.
Playbook _callback-cgroup.yml_ requires the config file  _callback-cgroup-ansible.cfg_ to work.
Use the ANSIBLE_CONFIG variable to point to this configuration file, like this. 
`ANSIBLE_CONFIG=ansible-examples/callback-cgroup-ansible.cfg  ansible-playbook ansible-examples/callback-cgroup.yml`
 
