## logrotate

設定ファイルの編集

    # vim /etc/logrotate.d/httpd

以下の通り編集

    /var/log/httpd/*log {
        daily
        rotate 90
        missingok
        ifempty
        sharedscripts
        delaycompress
        postrotate
            /usr/local/httpd/bin/apachectl graceful > /dev/null 2>/dev/null || true
        endscript
    }

古い設定

    /var/log/httpd/*log {
        daily
        rotate 90
        missingok
        ifempty
        sharedscripts
        delaycompress
        postrotate
            /bin/kill -HUP `head -n 1 /usr/local/httpd/logs/httpd.pid 2>/dev/null` 2>/dev/null || true
        endscript
    }




## rotatelogs（[参考](http://qiita.com/komazawa/items/77852eac0ee314f8c9ad)）

設定ファイルの編集

    # vim /etc/httpd/conf/httpd.conf

以下の通り編集

       :
    # Edit yyyymmdd
    ErrorLog "|/usr/sbin/rotatelogs /var/log/httpd/error_%Y%m%d.log 86400 540"
       :
    # Edit yyyymmdd
    CustomLog "|/usr/sbin/rotatelogs /var/log/httpd/access_%Y%m%d.log 86400 540" combined
       :




#EOF
