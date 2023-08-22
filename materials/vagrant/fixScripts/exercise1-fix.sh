#!/bin/bash
#add fix to exercise1 here

#vagrant@server1:~$ 
curl http://www.textfiles.com/art/bnbascii.txt
#curl: (7) Failed to connect to www.textfiles.com port 80: No route to host

---
sudo route 
sudo apt install net-tools
#Reading package lists... Done
#Building dependency tree
#Reading state information... Done
#The following NEW packages will be installed:
#  net-tools

sudo route
#Kernel IP routing table
#Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
#default         _gateway        0.0.0.0         UG    100    0        0 enp0s3
#10.0.2.0        0.0.0.0         255.255.255.0   U     0      0        0 enp0s3
#_gateway        0.0.0.0         255.255.255.255 UH    100    0        0 enp0s3
#192.168.60.0    0.0.0.0         255.255.255.0   U     0      0        0 enp0s8
#www.textfiles.c 0.0.0.0         255.255.255.255 UH    0      0        0 enp0s8


#the url www.textfiles.c was routed to enp0s8 and not to dev with internet access (enp0s3)
#just need to delete the route entry in the route table
sudo route del -net www.textfiles.com gw 0.0.0.0 netmask 255.255.255.255 dev enp0s8
curl http://www.textfiles.com/art/bnbascii.txt
#       ________________                              _______________
#      /                \                            / /           \ \
#     / /          \ \   \                          |    -    -       \
#     |                  |                          | /        -   \  |
#    /                  /                           \                 \
#   |      ___\ \| | / /                             \____________  \  \
#   |      /           |                             |            \    |
#   |      |     __    |                             |             \   \
#  /       |       \   |                             |              \  |
#  |       |        \  |                             | ====          | |
#  |       |       __  |                             | (o-)      _   | |
#  |      __\     (_o) |                             /            \  | |
#  |     |             |     Heh Heh Heh            /            ) ) | |
#   \    ||             \      /      Huh Huh Huh  /             ) / | |
#    |   |__             \    /                \  |___            - |  |
#    |   |           (*___\  /                  \    *'             |  |
#    |   |       _     |    /                    \  |____           |  |
#    |   |    //_______|                             ####\          |  |
#    |  /       |_|_|_|___/\                        ------          |_/
#     \|       \ -         |                        |                |
#      |       _----_______/                        \_____           |
#      |      /                                          \           |
#      |_____/                                            \__________|
#vagrant@server1:~$
#
#