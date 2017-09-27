#export COMMAND_OPTIONS="-username jenkins -password jenkins -master http://192.168.101.8:18080/ -fsroot /home/jenkins-slave"
#docker run --rm -it --privileged -e COMMAND_OPTIONS="$COMMAND_OPTIONS" 10.0.2.50/wh-cicd/jenkis-slave     bash


docker run --rm -it --privileged -e JENKINS_MASTER=http://jenkins-master:8080 \
-e REGISTRY_AUTH=eGllaHE6QWNkMTIzNDU= \
-e REGISTRY_IP=10.0.2.50 \
-e REGISTRY_PORT=80 \
-e REGISTRY_INSCURE=false \
-e SECRETKEY=LLy3Vyw9LDTPN8b1zyQhGity3N91WHunkZ5wLpeR \
-e ACCESSKEY=D64E879515ECB1EBC30C \
-e ENVIRONMENT="1a5" \
-e SLAVE_EXECUTORS=1 \
-e WINGARDEN_URL="http://192.168.101.2:8080" \
-v `pwd`/run.sh:/run.sh \
10.0.2.50/wh-cicd/jenkis-slave     bash

 cat /etc/docker/daemon.json /root/.docker/config.json /root/.rancher/cli.json


docker run --rm -it --privileged -e JENKINS_MASTER=http://jenkins-master:8080 \
-e REGISTRY_AUTH=eGllaHE6QWNkMTIzNDU= \
-e REGISTRY_IP=10.0.2.50 \
-e REGISTRY_PORT=80 \
-e REGISTRY_INSCURE=true \
-e SECRETKEY=LLy3Vyw9LDTPN8b1zyQhGity3N91WHunkZ5wLpeR \
-e ACCESSKEY=D64E879515ECB1EBC30C \
-e ENVIRONMENT="1a5" \
-e SLAVE_EXECUTORS=1 \
-e WINGARDEN_URL="http://192.168.101.2:8080" \
-v `pwd`/conf/run.sh:/run.sh \
10.0.2.50/wh-cicd/jenkis-slave:20170915     bash
WINGARDEN_URL
WINGARDEN_URL