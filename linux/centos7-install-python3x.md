
```bash
yum -y install epel-release
sed -r -e 's/^(enabled=)(1)/# '$(date +%Y%m%d)' #\1\2\n\10/g' /etc/yum.repos.d/epel.repo -i.$(date +%Y%m%d.%H%M%S).backup
yum --enablerepo=epel -y install python34 python34-pip
```
