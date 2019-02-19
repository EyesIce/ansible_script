# ansible_script
This ansible playbook is used for getting useful informations from remote server.

Within script.yml are definied only hosts and roles. Each role name is a directory that contains two subdirectories which are Files/ and Tasks/.

Files contains all the scripts.
Tasks contains just main.yml. In main.yml are written all tasks will run on remote server.

For running this playbook just run the command:

ansible-playbook /dir/of/this/project/script.yml

This playbook works with user root using public and private key files for connection. For using this with different password and/or different users proceed with this step:

Using multiple users and passwords:
create group_vars directory into main root project. Into group_vars must been create one file of each hosts group with same name of them.
Within files named such as hosts group it's necessary define user and password.

Example:
Into hosts file are defined two hosts groups as following:

hosts file:

[group1]

host1

host2

host3

[group2]

host4

host5

host6

host7

In this case we must create 2 files into group_vars: 1st file named group1 and 2nd file named group2.
In group1 file we must write credentials used for connecting to the hosts defined into group1.

group1 file:

ansible_user: root

ansible_password: root_password

We have to do the same for group2 file. Group1 and Group2 using different password and could use different users. If you won't use root, it is possible using a different user with sudo permission and it must definied in script.yml add this variables after hosts variable in script.yml:

file script.yml

hosts: hosts groups

become: yes

become_method: sudo
