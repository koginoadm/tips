
#### CentOS 6.x
```bash
v_hostname=djeeno.github.io

sed -r -e 's/^(HOSTNAME=)(.*)$/#\1\2\n\1'"${v_hostname}"'/g' /etc/sysconfig/network -i

reboot
```

#### CentOS 7.x
```bash
hostnamectl set-hostname djeeno.github.io

reboot
```

