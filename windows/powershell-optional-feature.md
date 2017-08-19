# Windows の機能の有効化または無効化

#### 現在の状態を取得
```PowerShell
Get-WindowsOptionalFeature -Online
```

#### 有効化
```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```


