# ansible-examples

These are my little playbooks, to remind me how Ansible tasks behave.
Read it, run it, edit it, play with it. 

They all run on localhost. No network required. 

"It's a pile of junk" disclaimer - 
The files are more brain-dump than structured, so quite possibly a complete mess.

## What are these?

There are about 100 little playbooks here.
Each one is about an ansible thing, like a play, a directive or a variable type. 
They all run locally and demonstrate how a little bit of ansible behaves. 
The playbooks are simple - no roles, no SSH, no remote hosts and mostly no privilege escalation (one exception is module-user.yml).

I wrote these on Fedora. My cross-platform testing is a big fat zero. 
I have no idea how they behave on Windows or other platforms.

### getting started 

* `sudo dnf install ansible git` 
* `git clone https://github.com/nickhardiman/ansible-examples`
* `ansible-playbook ansible-examples/ansible-facts.yml`

### playbook 

Each file name provides a clue about what the playbook does. 
The `filter-union.yaml` file has a few tasks using the 'union' filter. 
Run it like this. 
`ansible-playbook filter-union.yml` 

Each playbook starts with a description of how you run it and what it does.
Or at least some do. I got distracted, it's not my fault. 

### inventory 

Most playbooks read the inventory file inventory=inventory-localhost.yml
This is set by the line `inventory=inventory-localhost.yml` in ansible.cfg.

### configuration

Most playbooks read the default configuration file, ansible.cfg.
There are a few variations on configuration files in the same directory.
Playbook callback-cgroup.yml requires callback-cgroup-ansible.cfg.
I don't know of any way to specify a configuration file on the command line. 
Use the ANSIBLE_CONFIG variable to point to this configuration file. 
`ANSIBLE_CONFIG=ansible-examples/callback-cgroup-ansible.cfg  ansible-playbook ansible-examples/callback-cgroup.yml`
 
