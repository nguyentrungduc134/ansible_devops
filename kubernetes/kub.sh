ssh-keygen -R 192.168.56.2
ssh-keygen -R 192.168.56.3
ssh-keygen -R 192.168.56.4
sshpass -p 123456 ssh-copy-id -o StrictHostKeyChecking=no root@192.168.56.2
sshpass -p 123456 ssh-copy-id -o StrictHostKeyChecking=no root@192.168.56.3
sshpass -p 123456 ssh-copy-id -o StrictHostKeyChecking=no root@192.168.56.4
ansible-playbook -b -i inventory main.yml -uroot
