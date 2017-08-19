```
New-NetFirewallRule -Name MDNS-In-UDP -DisplayName "mDNS" -Description "Allow mDNS (udp/5353)" -Protocol UDP -LocalPort 5353 -Enabled True -Profile Any -Action Allow
New-NetFirewallRule -Name MDNS-Out-UDP -DisplayName "mDNS" -Description "Allow mDNS (udp/5353)" -Protocol UDP -LocalPort 5353 -Enabled True -Profile Any -Action Allow
```

```PowerShell
New-NetFirewallRule -Name SSH-In-TCP -DisplayName "SSH" -Description "Allow SSH (TCP/22)" -Protocol TCP -LocalPort 22 -Enabled True -Profile Any -Action Allow
```
