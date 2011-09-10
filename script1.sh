#!/bin/bash

echo "options {" >> /var/named/chroot//etc/named.conf
echo " directory \"/var/named\";" >> /var/named/chroot//etc/named.conf
echo " dump-file \"/var/named/data/cache_dump.db\";" >> /var/named/chroot//etc/named.conf
echo " statistics-file \"/var/named/data/named_stats.txt\";" >> /var/named/chroot//etc/named.conf
echo "};" >> /var/named/chroot//etc/named.conf
echo "include \"/etc/rndc.key\";" >> /var/named/chroot//etc/named.conf
cd /var/named/chroot//etc/
chmod 640 named.conf
chgrp named named.conf
ln -s /var/named/chroot//etc/named.conf /etc/named.conf
