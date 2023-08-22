#!/bin/bash
#add fix to exercise5-server1 here

#ssh vagrant@server2
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y
ssh-copy-id -i ~/.ssh/id_rsa.pub server2
sudo service ssh restart