### Register Apache HTTP Server to Windows Services
1. Launch `cmd.exe` as `Administrator`  
1. `cd C:\Apache24\bin`
1. `httpd -k install`


###### conf/httpd.conf
```
LoadModule proxy_module modules/mod_proxy.so
LoadModule proxy_ajp_module modules/mod_proxy_ajp.so
```

###### conf/extra/httpd-proxy.conf
```
ProxyPass         /admin-mtn-sv/  http://localhost:8080/admin-mtn-sv/
ProxyPassReverse  /admin-mtn-sv/  http://localhost:8080/admin-mtn-sv/
ProxyPass         /wmconf/        http://localhost:8080/wmconf/
ProxyPassReverse  /wmconf/        http://localhost:8080/wmconf/
ProxyPass         /webmtn/        http://localhost:8080/webmtn/
ProxyPassReverse  /webmtn/        http://localhost:8080/webmtn/
```

