#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# install ansible-galaxy packages
ansible-galaxy install geerlingguy.nodejs
# ansible-galaxy install ANXS.postgresql
# ansible-galaxy install jdauphant.nginx
# ansible-galaxy install flyapen.jenkins
# ansible-galaxy install angstwad.docker_ubuntu
# ansible-galaxy install geerlingguy.daemonize
# ansible-galaxy install geerlingguy.mailhog
# ansible-galaxy install geerlingguy.nginx
# ansible-galaxy install geerlingguy.git
# ansible-galaxy install geerlingguy.varnish
# ansible-galaxy install geerlingguy.security
# ansible-galaxy install mattwillsher.sshd
# ansible-galaxy install nickhammond.logrotate
# ansible-galaxy install kamaln7.swapfile
# ansible-galaxy install resmo.ntp
# ansible-galaxy install angstwad.docker_ubuntu
# ansible-galaxy install ssilab.aws-cli
# ansible-galaxy install jdauphant.ssl-certs
# ansible-galaxy install telusdigital.upstart
# ansible-galaxy install ANXS.monit
# ansible-galaxy install telusdigital.aws-hostname

# ansible-galaxy install debops.secret
# ansible-galaxy install debops.core

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/mgmt/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.11  lb
10.0.15.21  web1
10.0.15.22  web2
10.0.15.23  web3
10.0.15.24  web4
10.0.15.25  web5
10.0.15.26  web6
10.0.15.27  web7
10.0.15.28  web8
10.0.15.29  web9
EOL
