# Windows Subsystem for Linux

##### 「ファイル名を指定して実行 ( Windows+R ) 」で、以下実行。

```PowerShell
powershell.exe -Command "Start-Process -FilePath powershell.exe -Verb RUNAS"
```

##### 以下一連のコマンドを実行。

```PowerShell
# Windows機能の有効化 => Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# 開発者モード オン
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

# インストール
lxrun /install /y
```

##### おわり。


#### 日本語表示による文字化け回避

```
root@pc-01:~# update-locale LANG=en_US.UTF8
```

<!--
## `lxrun`コマンドについて

```
C:\> lxrun
Performs administrative operations on the LX subsystem

Usage:
    /install - Installs the subsystem
        Optional arguments:
            /y - Do not prompt user to accept
    /uninstall - Uninstalls the subsystem
        Optional arguments:
            /full - Perform a full uninstall
            /y - Do not prompt user to accept
    /update - Updates the subsystem
        Optional arguments:
            /critical - Perform critical update. This option will close all running LX processes when the update completes.

C:\> lxrun /install /y

C:\> lxrun /setdefaultuser root

C:\> lxrun /uninstall /y

```

## ssh 設定
```bash
# 鍵生成
dpkg-reconfigure openssh-server

# 設定変更の内容を確認
diff -u /etc/ssh/sshd_config <(sed -r -e 's/^(UsePrivilegeSeparation )(yes)/# '$(date +%Y%m%d)' #\1\2\n\1no/g' /etc/ssh/sshd_config)

# 設定変更
sed -r -e 's/^(UsePrivilegeSeparation )(yes)/# '$(date +%Y%m%d)' #\1\2\n\1no/g' /etc/ssh/sshd_config -i_$(date +%Y%m%d_%H%M%S).backup

# 差分確認
diff -u $(ls -t /etc/ssh/sshd_config* | tail -n 1) /etc/ssh/sshd_config
```
-->





<!--
## 以下、旧手順。

1. **<kbd>Windows</kbd> + <kbd>R</kbd> => `OptionalFeatures`**

1. **Check `Windows Subsystem for Linux`**

1. **<kbd>Windows</kbd> + <kbd>U</kbd> => `developer`** (OR **<kbd>Windows</kbd> + <kbd>R</kbd> => `powershell -Command "Start-Process -Verb runas powershell Show-WindowsDeveloperLicenseRegistration"`**)

1. **Check `Developer mode`**

```
if (-not((Get-WindowsOptionalFeature -Online | Where-Object { $_.FeatureName -eq 'Microsoft-Windows-Subsystem-Linux' }).State -eq 'Enabled'))
{
   Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
   reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
}

lxrun

lxrun /install /y
```
-->

###### EOF
