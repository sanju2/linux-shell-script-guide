# !/bin/bash
# Created by Randika
# Run as root user

LIMITS_CONF_FILE_PATH=${LIMITS_CONF_FILE_PATH:="/etc/security/limits.conf"}
SYSCTL_CONF_FILE=${SYSCTL_CONF_FILE:="/etc/sysctl.conf"}

echo '--Start the create elasticseacrh User script--'

#--Step 01--
#create elasticseacrh dir
mkdir /home/elasticseacrh
#change elasticseacrh dir permission
cd /home
echo $PWD
chown -R elasticseacrh:elasticseacrh elasticseacrh
#usermod
# usermod -d /home/elasticseacrh elasticseacrh

#--Step 02--
sed -i '60 a elasticseacrh - nofile 65536' ${LIMITS_CONF_FILE_PATH}

#--Step 03--
sed -i '9 a vm.max_map_count=262144' ${SYSCTL_CONF_FILE}

#--Step 04--
#load the above added map_count_value
sysctl -p

echo '--End of the create elasticseacrh User script--'