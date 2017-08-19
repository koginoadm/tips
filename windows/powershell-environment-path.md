

#### env:*
```PowerShell
# 環境変数 PATH に $env:USERPROFILE\GoogleDrive\bin を追加
[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;$env:USERPROFILE\GoogleDrive\bin", [EnvironmentVariableTarget]::User)

# 環境変数 PATHEXT に .LNK を追加
[Environment]::SetEnvironmentVariable("PATHEXT", "$env:PATHEXT;.LNK", [EnvironmentVariableTarget]::User)

```
