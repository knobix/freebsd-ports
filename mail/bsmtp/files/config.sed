# $FreeBSD$
s,@CC@,%%CC%%,
s,@INSTALL@,/usr/bin/install,
s,@SH@,/bin/sh,
s,@GZIP@,/usr/bin/gzip,
s,@PERL@,/usr/bin/perl,
s,@COMPRESS@,/usr/bin/compress,
s,@UUX@,%%UUPREFIX%%/bin/uux,
s,@SENDMAIL@,/usr/sbin/sendmail,
s,@CFLAGS@,%%CFLAGS%%,
s,@PRIVBINDIR@,%%PREFIX%%/libexec/bsmtp,
s,@PUBBINDIR@,%%PREFIX%%/bin,
s,@MAILERDIR@,%%PREFIX%%/share/sendmail,
s,@BINUSR@,root,
s,@BINGRP@,wheel,
s,@QUEUEDIR@,/var/spool/bsmtp,
s,@DAEMONUSER@,uucp,
s,@DAEMONGID@,66,
s,@DAEMONUID@,66,
s,@INPROTO@,BSMTP,
s,@LOCALHOSTNAME@,`hostname`,
s,@DOMAINSUFFIX@,none,
s,@SENDMAILVERS@,8.11,
s,@INSTALLMAILER@,true,
s,@MAILERVERSION@,8.11,
s,@FLOCK@,true,
s,@LOCKDEFINE@,-DUSE_FLOCK,
s,@BATCHER@,batcher.new,
