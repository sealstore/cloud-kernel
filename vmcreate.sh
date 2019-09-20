#!/bin/bash

echo "create a vm"
# aliyun ecs RunInstances --Amount 1 --ImageId centos_7_04_64_20G_alibase_201701015.vhd --InstanceType ecs.c5.xlarge --Action RunInstances --InternetChargeType PayByTraffic --InternetMaxBandwidthIn 5 --InternetMaxBandwidthOut 5 --Password Fanux#123 --InstanceChargeType PostPaid --SpotStrategy SpotAsPriceGo --RegionId cn-hongkong  --SecurityGroupId sg-j6cg7qx8vufo7vopqwiy --VSwitchId vsw-j6crutzktn5vdivgeb6tv --ZoneId cn-hongkong-b

echo "get fip"
output=$(aliyun ecs AllocatePublicIpAddress --InstanceId i-j6cb7dd57ppapryp4deb --Action AllocatePublicIpAddress)
