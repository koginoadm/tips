```
mkdir -p /root/bin

vim /root/bin/authenticator.sh

vim /root/bin/cleanup.sh

ls -l /root/bin/{authenticator.sh,cleanup.sh}

certbot-auto certonly --manual --manual-public-ip-logging-ok --agree-tos --email XXXXXXXX@XXXXXXXX.XXX --preferred-challenges dns --manual-auth-hook authenticator.sh --manual-cleanup-hook cleanup.sh -d XXXXXXXX.XXX

certbot-auto renew
```
