
## [Install and configure Azure PowerShell](https://docs.microsoft.com/ja-jp/powershell/azure/install-azurerm-ps)

```PowerShell
Get-Module PowerShellGet -list | Select-Object Name,Version,Path

Install-Module AzureRM

Import-Module AzureRM

Get-Module AzureRM -list | Select-Object Name,Version,Path
```
