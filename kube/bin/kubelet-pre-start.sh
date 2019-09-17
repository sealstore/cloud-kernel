#!/bin/bash
# Open ipvs
modprobe -- ip_vs
modprobe -- ip_vs_rr
modprobe -- ip_vs_wrr
modprobe -- ip_vs_sh
modprobe -- nf_conntrack_ipv4

cat <<EOF >  /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system
sysctl -w net.ipv4.ip_forward=1
# systemctl stop firewalld && systemctl disable firewalld
swapoff -a
setenforce 0
exit 0
