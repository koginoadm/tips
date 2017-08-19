# powershell-rdp-allow
```PowerShell
(Get-WmiObject win32_TerminalServiceSetting -Namespace root\cimv2\TerminalServices).SetAllowTSConnections(1,1)
```

### Syntax
```cs
uint32 SetAllowTSConnections(
  [in] uint32 AllowTSConnections,
  [in] uint32 ModifyFirewallException
);
```

### Reference
[SetAllowTSConnections method of the Win32_TerminalServiceSetting class (Windows)](https://msdn.microsoft.com/ja-jp/library/aa383644.aspx)
