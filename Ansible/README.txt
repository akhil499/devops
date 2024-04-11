- No need to write playbook always commands can be run on cli
    - called as ansible ad-hoc commands
    - we can create inventory file to store target server ips(private IP) we can store multiple IPs as well
- Now type the command
- eg: it runs shell commands

ansible -i inventory all -m "shell" -a "touch devopsclass"

- To run multiple commands we write the playbook
- below is the link to ansible module : https://docs.ansible.com/ansible/2.9/modules/list_of_all_modules.html
- in inventory files we can creates groups
    - eg:
    
    [groupname]
    IP
    
    [group2]
    IP
    
    we can execute command like
    
    ansible -i inventory groupname -m "shell" -a "touch devopsclass"
    
    
    
    to execute playbook command is - ansible-playbook -i inventory playbookname