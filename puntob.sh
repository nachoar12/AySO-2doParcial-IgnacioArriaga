sudo apt update
sudo apt install ansible
sudo apt list --installed |grep ansible
git clone https://github.com/upszot/UTN-FRA_SO_Ansible
cd UTN-FRA_SO_Ansible/
cd ejemplo_02
ll
nano inventory
nano playbook.yml
ansible-playbook -i inventory playbook.yml
