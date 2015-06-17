FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:latest
USER root
RUN mv /usr/local/sti/assemble /usr/local/sti/_assemble
COPY assemble /usr/local/sti/assemble
COPY standalone.conf /opt/eap/bin/standalone.conf
USER jboss
