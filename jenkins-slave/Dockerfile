FROM winhong/dockerindocker:17.06

ARG "version=0.2.0"
ARG "releas_server=http://192.168.101.7:8080"

LABEL org.label-schema.name="jenkins-swarm-agent" \
    org.label-schema.description="Jenkins agent based on the Swarm plugin, a docker daemon will running " \
    org.label-schema.version=$version \
	org.label-schema.build-date=$build_date

ENV SWARM_CLIENT_VERSION="1.26" \
    JAVA_HOME=/root/jdk1.8.0_45

RUN  apt-get update && \
    apt-get install   -y  tar gzip git  supervisor && \
    apt-get   clean

RUN useradd -G root  -m jenkins  && \
    curl -sL $releas_server/jdk/jdk1.8.0_45.tar.gz  | tar xvf - -C / && \ 
    curl -sL $releas_server/jdk/jdk1.7.0_25.tar.gz  | tar xvf - -C / && \ 
    curl -sL $releas_server/maven/maven-2.1.0.tar.gz  | tar xvf - -C / && \ 
    curl -sL $releas_server/maven/maven-3.3.9.tar.gz  | tar xvf - -C /  && \
    curl -sL -o /home/jenkins/swarm-client.jar $releas_server/jenkins/swarm-client-3.3.jar  && \
    curl -sL $releas_server/tools/rancher-linux-amd64-v0.5.3.tar.gz | tar -xzv -C /usr/bin/ --strip-components=2 



    
ADD conf /conf
RUN mkdir -p /var/spool/cron/crontabs && mkdir -p  /root/.rancher \
    &&   mkdir -p /root/.docker  && mkdir -p /etc/docker \
    && cp ./conf/cron.conf /var/spool/cron/crontabs/root \
    && cp ./conf/cli.json   /root/.rancher/cli.json  \
    && cp ./conf/docker_config.json   /root/.docker/config.json \
    && cp ./conf/docker_daemon.json   /etc/docker/daemon.json 


VOLUME /var/lib/docker
CMD ["/conf/run.sh"]

