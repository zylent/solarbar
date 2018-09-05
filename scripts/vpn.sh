#!/bin/bash
echo $(/usr/local/bin/ip a |grep utun2 || echo 'none')@$(ifconfig utun2 | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | uniq)
