```bash
echo $(echo | alternatives --config mta | grep postfix | grep -o [0-9]) | alternatives --config mta
chkconfig sendmail off
service sendmail stop
chkconfig postfix on
service postfix start
```
