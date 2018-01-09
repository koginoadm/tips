```
mkdir -p /root/bin

curl -L https://dl.eff.org/certbot-auto -o /root/bin/certbot-auto

vim /root/bin/authenticator.sh

vim /root/bin/cleanup.sh

chmod +x /root/bin/{certbot-auto,authenticator.sh,cleanup.sh}

ls -l /root/bin/{certbot-auto,authenticator.sh,cleanup.sh}

certbot-auto certonly --manual --manual-public-ip-logging-ok --agree-tos --email XXXXXXXX@XXXXXXXX.XXX --preferred-challenges dns --manual-auth-hook authenticator.sh --manual-cleanup-hook cleanup.sh -d XXXXXXXX.XXX

certbot-auto renew
```
