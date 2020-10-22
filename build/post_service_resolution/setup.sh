#!/bin/sh

 echo "*	smtp:$smart_hostname:$smart_host_port"  > /etc/postfix/transport
 postmap /etc/postfix/transport

if ! test -z $smart_host_passwd
 then
   echo "$smart_hostname $smart_host_user:$smart_host_passwd" > /etc/postfix/smarthost_passwd
   postmap /etc/postfix/smarthost_passwd
 else
 	rm /etc/postfix/smarthost_passwd*
fi

