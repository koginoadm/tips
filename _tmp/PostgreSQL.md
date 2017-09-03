# PostgreSQL




## 初期設定

ログディレクトリのシンボリックリンク作成（保守性のため）

    # ln -s /var/lib/pgsql/data/pg_log /var/log/pg_log

設定ファイルのバックアップ作成

    # cp -p /var/lib/pgsql/data/postgresql.conf /var/lib/pgsql/data/postgresql.conf-$(date +"%Y%m%d-%H%M%S").bak

設定ファイル編集

    # vim /var/lib/pgsql/data/postgresql.conf

以下の通り編集（[参考](http://lets.postgresql.jp/documents/technical/log_setting)）

       :
    # Edit yyyymmdd
    #log_filename = 'postgresql-%a.log'   # log file name pattern,
    log_filename = 'postgresql-%Y%m%d.log'       # log file name pattern,
       :
    # Edit yyyymmdd
    #log_truncate_on_rotation = on                # If on, an existing log file with the
    log_truncate_on_rotation = off                # If on, an existing log file with the
       :
    #log_line_prefix = ''     # special values:
    # Edit yyyymmdd
    log_line_prefix = '%t %u %d [%p]: '                      # special values:
       :




#EOF
