# JMeter非公式日本語カタログ
# Unofficial Japanese Catalog for JMeter

## 概要

Apache JMeterのUIを日本語化します。

## 内容

- ApacheJMeter_*.jar.txt
- build.sh
- en/*.properties
- ja/*_ja.properties
- Makefile
- Test.jmx

## プラットフォーム

- Apache JMeter 5.1
- Windows 7 Pro x64 SP1 日本語版
- Windows 10 Home x64 1809 日本語版

## インストール

build.shのJMETER_HOMEを書き換えて実行します。
必要に応じて管理者権限で実行します。
zipと、JDK(≦1.8)のnative2asciiが必要です。
.jarファイルを書き換えるので注意してください。

日本語で起動するには、bin\setenv.batに以下のように書きます。
```
set JMETER_LANGUAGE=-Duser.language="ja"
```

## 注意

表示されているキーボードショートカットが機能しない箇所があります。

翻訳が反映されない箇所があります。

## 免責

翻訳の正確さについては保証しません。

本パッケージの使用に伴う損害・不利益・逸失利益などについて作者は一切責任を負いません。

本パッケージについてApacheその他への問い合わせはご遠慮ください。

## ライセンス

オリジナルに従います。

## 作者

Takayuki ITO <yuki@euc.jp>

