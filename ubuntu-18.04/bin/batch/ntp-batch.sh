#!/bin/bash
ssh $1 "sudo apt install -y ntp;ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime"
##这里需要制定具体是哪个配置文件？？
scp ../../configs/ntp.conf root@$1:/etc/
ssh $1 "sudo service ntp restart"
ssh $1 "sudo systemctl enable ntp"
ssh $1 "sudo ntpq -p"
ssh $1 "sudo echo 'Asia/Shanghai' >/etc/timezone"
echo ""