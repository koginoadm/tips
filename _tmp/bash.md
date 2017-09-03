# bash

## 特殊変数

|code|説明|備考|
|:--|:--|:--|
|`$?`|返値||
|`$#`|引数の数||
|`$*`|引数のリスト|`""`でくくるとひとつの引数扱い(`"1 2 3 4"`)|
|`$@`|引数のリスト|`""`でくくってもリスト扱い(`"1" "2" "3" "4"`)|
|`$$`|現在のプロセスのPID||




## 環境変数

|code|説明|備考|
|:--|:--|:--|
|`HISTTIMEFORMAT='%Y-%m-%dT%T%z '`|`history`にコマンド実行時刻を記録する||




## いいかんじのオプション

|code|説明|備考|
|:--|:--|:--|
|`grep --color=always`|`grep`のマッチング色付き表示がいいかんじになる||


## シェルスクリプトスニペット

#### YumInstall

    function YumInstall()
    {
      if ! rpm --quiet -q $@; then
        yum -y install $@
        if ! rpm --quiet -q $@; then
          echo -e "$(date -Is) ${HOSTNAME/.*} $(basename $0)[$$]: [\e[31mERROR\e[0m] $@ install failed." && exit 1
        else
          echo -e "$(date -Is) ${HOSTNAME/.*} $(basename $0)[$$]: [\e[32mINFO\e[0m] $@ installed."
        fi
      fi
    }

#### YumGroupinstall

    function YumGroupinstall()
    {
      declare installed_groups=$(
        csplit -f yum_grouplist_ <(yum grouplist) '/^[A-Z][a-z]* Groups:/' {*} >/dev/null 2>&1
        sed -r -e '/Installed Groups:/d' -e 's/^ *//' "$(egrep 'Installed Groups:' yum_grouplist_* | cut -d ':' -f 1)" 2>/dev/null
      )
      if [ -z "$(echo "${installed_groups}" | egrep "$1")" ]; then
        yum -y groupinstall "$1"
        declare installed_groups=$(
          csplit -f yum_grouplist_ <(yum grouplist) '/^[A-Z][a-z]* Groups:/' {*} >/dev/null 2>&1
          sed -r -e '/Installed Groups:/d' -e 's/^ *//' "$(egrep 'Installed Groups:' yum_grouplist_* | cut -d ':' -f 1)" 2>/dev/null
        )
        if [ -z "$(echo "${installed_groups}" | egrep "$1")" ]; then
          echo -e "$(date -Is) ${HOSTNAME/.*} $(basename $0)[$$]: [\e[31mERROR\e[0m] $1 install failed." && exit 1
        else
          echo -e "$(date -Is) ${HOSTNAME/.*} $(basename $0)[$$]: [\e[32mINFO\e[0m] $1 installed."
        fi
      fi
    }




#EOF
