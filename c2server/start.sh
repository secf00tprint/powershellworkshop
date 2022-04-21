#! /bin/bash
/usr/sbin/sshd -D &
service vsftpd start
tail -f /var/log/vsftpd.log
