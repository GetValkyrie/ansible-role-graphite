#/bin/sh

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh 2>/dev/null | env ANSIBLE_BRANCH=stable-1.9 /bin/sh
ansible-galaxy install --ignore-errors geerlingguy.mysql
ansible-galaxy install --ignore-errors geerlingguy.apache
target=/etc/ansible/roles/getvalkyrie.graphite
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles/
  ln -s /vagrant/ $target
fi
 
