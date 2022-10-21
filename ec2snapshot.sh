#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair1.pem ec2-user@13.214.34.108 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster02; ~/update_snapshot.sh data 2 MyCluster02"
