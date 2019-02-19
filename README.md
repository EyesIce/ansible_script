# ansible_script
This ansible playbook is used for getting useful informations from remote server.

Whitin script.yml are definied only hosts and roles. Each role name is a directory that contains two subdirectories which are Files/ and Tasks/.

Files contains all the scripts.
Tasks contains just main.yml. In main.yml are written all tasks will run on remote server.

For running this playbook just run the command:

ansible-playbook /dir/of/this/project/script.yml
