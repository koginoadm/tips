## sed

|code|説明|備考|
|:--|:--|:--|
|`sed 's/abc/ABC/' $file`|`'s/a/A/'` 1回/1行の置換||
|`sed 's/abc/ABC/g' $file`|`'s/a/A/g'` ∞回/1行の置換||
|`sed -e 's/abc/ABC/g' -e 's/def/DEF/g' $file`|`-e`複数条件||
|`sed -r 's/[a-z]+f/FFF/g' $file`|`-r` 拡張正規表現||
|`sed -r 's/[a-z]+f/FFF/g' $file`|`-r` 拡張正規表現||
|`sed -r '/def$/d' $file`|`'/pattern/d'` マッチする行を削除||
|`sed -r '/def$/!d' $file`|`'/pattern/!d'` マッチする行以外を削除|`grep`として使える！|




#EOF
