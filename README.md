# JMeter非公式日本語カタログ
# Unofficial Japanese Catalog for JMeter

## 概要

Apache JMeterのGUIを日本語化します。

## 内容

- ApacheJMeter_*.jar.txt
- en/*.properties
- install.sh
- ja/*_ja.properties
- Makefile
- README.md
- Test.jmx

## プラットフォーム

- Apache JMeter 5.1
- Windows 7 Pro x64 SP1 日本語版
- Windows 10 Home x64 1809 日本語版
- JDK 1.8.0_201
- cygwin 2.11

## インストール(Windows)

zipと、JDK(≦1.8)のnative2asciiが必要です。
JMETER_HOMEの設定が必要です。

JMeterのGUIを終了し、install.shを(必要に応じて管理者権限で)実行します。
$JMETER_HOME/lib/ext/*.jarを書き換えるので注意してください。

起動時から日本語にするには、bin\setenv.batに以下のように書きます。
```
set JMETER_LANGUAGE=-Duser.language="ja"
```

## 注意

以下のものは翻訳されません。

- HTML Assertion
- テンプレートの説明

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

