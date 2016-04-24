FROM syscomiddleware/oracle-soa-domain:centos-12.2.1

ENV DOMAIN_HOME /opt/oraclefmw/config/domains/domain1
ENV ADMIN_SERVER_HOST admin-server
ENV ADMIN_SERVER_PORT 7001

RUN yum install -y telnet

USER oraclefmw

WORKDIR $DOMAIN_HOME

ADD wait_admin-server.sh .

CMD  sh wait_admin-server.sh && sh bin/startManagedWebLogic.sh soa_server1 t3://admin-server:7001 -Djava.security.egd=file:///dev/./urandom
