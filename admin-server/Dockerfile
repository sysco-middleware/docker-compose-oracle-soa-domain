FROM syscomiddleware/oracle-soa-domain:centos-12.2.1

ENV DOMAIN_HOME /opt/oraclefmw/config/domains/domain1
ENV ORACLE_DATABASE_HOST soa-database
ENV ORACLE_DATABASE_PORT 1521

RUN yum install -y telnet

USER oraclefmw

WORKDIR $DOMAIN_HOME

ADD wait_database.sh .

CMD  sh wait_database.sh && sh startWebLogic.sh -Djava.security.egd=file:///dev/./urandom
