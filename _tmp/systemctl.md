## systemctl

serviceファイルの編集

    # vim /usr/lib/systemd/system/httpd.service

以下の通り編集

    [Unit]
    Description=The Apache HTTP Server
    After=network.target remote-fs.target nss-lookup.target

    [Service]
    Type=simple
    RemainAfterExit=yes
    ExecStart=/usr/local/httpd/bin/apachectl -f /usr/local/httpd/conf/httpd.conf

    [Install]
    WantedBy=multi-user.target




#EOF
