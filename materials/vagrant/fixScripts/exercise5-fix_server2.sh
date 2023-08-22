#!/bin/bash
#add fix to exercise5-server2 here

#ssh vagrant@server1
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y
ssh-copy-id -i ~/.ssh/id_rsa.pub server2
sudo service ssh restart