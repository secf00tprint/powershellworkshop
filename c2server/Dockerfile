FROM httpd:2.4.53
RUN apt-get update -qq && apt-get install -y openssh-server ssh sudo iputils-ping vim iproute2 curl unzip vsftpd
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 -m c2cmdgod
RUN echo 'c2cmdgod:c2cmdgod' | chpasswd
RUN service ssh start
COPY start.sh /
COPY vsftpd.conf /etc/
RUN chmod u+x /start.sh
CMD ["/start.sh"]
