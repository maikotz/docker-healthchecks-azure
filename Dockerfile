FROM galexrt/healthchecks:v1.15.0-20200702-123222-685

USER root
RUN apt-get install -y openssh-server && echo "root:Docker!" | chpasswd
COPY sshd_config /etc/ssh/

COPY sshd.conf /etc/supervisor/conf.d/
RUN cat /etc/supervisor/conf.d/sshd.conf >> /etc/supervisor/supervisord.conf


USER 1000
EXPOSE 8000/tcp 2525/tcp 2222/tcp
