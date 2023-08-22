#!/bin/bash
#add fix to exercise2 here
curl http://www.ascii-art.de/ascii/ab/007.txt
#<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
#<html><head>
#<title>403 Forbidden</title>
#</head><body>
#<h1>Forbidden</h1>
#<p>You don't have permission to access this resource.</p>
#<hr>
#<address>Apache/2.4.41 (Ubuntu) Server at www.ascii-art.de Port 80</address>

#the  http://www.ascii-art.de found in /etc/hosts and routed to 127.0.0.1
#127.0.0.1 www.ascii-art.de
#we need to delete this record and save the hosts file.
#sudo vi /etc/hosts
#remove\remark the entry 127.0.0.1 www.ascii-art.de

sudo sed -i '$ s/^/#/' /etc/hosts
#or
sudo sed -i '/^127.0.0.1 www.ascii-art.de/ s/./#&/' /etc/hosts