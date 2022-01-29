#!/bin/bash
brokerId=`echo $HOSTNAME | rev | cut -d \- -f 1 | rev`
sed -i "s#^brokerId = .*#brokerId = $brokerId#g" ${ROCKETMQ_HOME}/conf/broker.conf
sed -i "s#^brokerName = .*#brokerName = $BROKER_NAME#g" ${ROCKETMQ_HOME}/conf/broker.conf
sed -i "s#^brokerClusterName = .*#brokerClusterName = $BROKER_CLUSTER_NAME#g" ${ROCKETMQ_HOME}/conf/broker.conf
sh ./mqbroker -n $EnvNameServiceAddress "$@"