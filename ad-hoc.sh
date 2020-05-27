#!/bin/bash

# reboots the nodes
#ansible -i webapp web -m debug -a "msg='shutdown -r now'"

# queries your fleet to see which version of ansible is installed
ansible -i webapp web -m command -a "rpm -q ansible"

# distributes a file - critfile to the hosts
ansible -i webapp web -m copy -a "src=critfile dest=/tmp/critfile"
