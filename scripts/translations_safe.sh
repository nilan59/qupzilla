#!/bin/bash

## circular inclusions workaround - we comment that buggy line
sed -i 's/include(3rdparty/##temp/g' ../src/QupZilla.pro

lupdate ../src/QupZilla.pro -ts ../translations/cs_CZ.ts

lupdate ../src/QupZilla.pro -ts ../translations/sk_SK.ts

lupdate ../src/QupZilla.pro -ts ../translations/nl_NL.ts

lupdate ../src/QupZilla.pro -ts ../translations/de_DE.ts

lupdate ../src/QupZilla.pro -ts ../translations/es.ts

lupdate ../src/QupZilla.pro -ts ../translations/it_IT.ts

lupdate ../src/QupZilla.pro -ts ../translations/zh_CN.ts

## uncomment it now
sed -i 's/##temp/include(3rdparty/g' ../src/QupZilla.pro

read -p "Press [ENTER] to close terminal"
exit
