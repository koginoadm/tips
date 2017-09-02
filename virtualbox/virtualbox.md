1. VirtualBoxインストール
```PowerShell
powershell.exe -Command "Start-Process -FilePath powershell.exe -Args '-Command "Invoke-RestMethod -Uri https://koginoadm.github.io/ps1/install-virtualbox.ps1 | powershell.exe -"' -Verb RUNAS"
```

2. PowerShellを管理者として実行
```PowerShell
powershell.exe -Command "Start-Process -FilePath powershell.exe -Verb RUNAS"
```

3. PATHを追加
```PowerShell
[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;$env:ProgramFiles\Oracle\VirtualBox", [EnvironmentVariableTarget]::User)
```

4. ストレージ > 光学ドライブ > インストールメディア選択

5. ネットワーク > ブリッジアダプター選択



