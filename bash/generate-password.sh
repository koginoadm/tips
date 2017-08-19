cat /dev/urandom | tr -dc "[:alnum:]\." | fold -w 12 | grep "\." | head -n 1
