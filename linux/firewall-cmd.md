# firewall-cmdについて


### ダイレクトルール(`--direct`)について
firewalldの設定をiptables的な書式で書ける素敵なヤツ。  
`firewall-cmd --direct --add-rule ...`と記述する。  
```
# 設定例：優先度1000で、SSH通信を許可
firewall-cmd --direct --add-rule ipv4 filter INPUT 1000 -m state --state NEW -p tcp -m tcp --dport 22 -j ACCEPT

# 設定の確認
firewall-cmd --direct --get-all-rules

# 設定ファイルはこちら
cat /etc/firewalld/direct.xml
```

### CHAIN(チェイン) 設定
```
# CHAIN 追加
firewall-cmd --permanent --direct --add-chain ipv4 filter EXT_INPUT
firewall-cmd --permanent --direct --add-chain ipv4 filter FROM_ME

# CHAIN が追加されたことを確認
firewall-cmd --permanent --direct --get-chains ipv4 filter

# CHAIN rule 追加
firewall-cmd --permanent --direct --add-rule ipv4 filter INPUT 1000 -i eth0 -m state --state NEW -j EXT_INPUT
firewall-cmd --permanent --direct --add-rule ipv4 filter EXT_INPUT 1000 -s 172.16.1.224/27 -j FROM_ME
firewall-cmd --permanent --direct --add-rule ipv4 filter FROM_RIST 1000 -p tcp -m tcp --dport 22 -j ACCEPT

# CHAIN rule が追加されたことを確認
firewall-cmd --permanent --direct --get-all-rules
```



### 自分自身にはメールは送りたい(localhost:25)が、インターネットへのメールの送信(0.0.0.0:25)は禁止したい場合
#### → eth0(外部通信用NIC)の tcp/25 のアウトバウンド通信を DROP する

```
firewall-cmd --direct --remove-rule ipv4 filter OUTPUT 10 -p tcp -m tcp --dport=25 -o eth0 -j DROP
```

### icmpパケットをすべてDROP
```
# 設定
firewall-cmd --direct --add-rule ipv4 filter INPUT 100 -p icmp -j DROP

# 設定削除
firewall-cmd --direct --remove-rule ipv4 filter INPUT 100 -p icmp -j DROP
```
