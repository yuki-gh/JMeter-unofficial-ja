# JMeter非公式日本語カタログ
# Unofficial Japanese Catalog for JMeter

## 概要

Apache JMeterのGUIを日本語化します。

## 内容

- ApacheJMeter_*.jar.txt
- en/*.properties
- en/templates.xml
- install.sh
- ja/*_ja.properties
- ja/templates.xml
- Makefile
- README.md
- Test.jmx

## プラットフォーム

- Apache JMeter 5.2.1
- Windows
	- Windows 10 Home x64 1909 日本語版
	- cygwin 3.1
	- JDK 1.8.0_241
- macOS 10.14 Mojave
- Linux
	- Ubuntu 16.04 (WSL)
	- Debian GNU/Linux 9 (WLinux)
	- OpenJDK 8

## インストール

### 共通

zipと、JDK(≦1.8)のnative2asciiが必要です。
JMETER_HOMEの設定が必要です。

JMeterのGUIを終了し、install.shを(必要に応じて管理者権限で)実行します。
$JMETER_HOME/lib/ext/*.jarを書き換えるので注意してください。

### Windows

### macOS

### Linux

環境によっては日本語フォントのインストール・設定が必要です。

## 注意

Debian系の場合、aptでインストールされるJMeterは古いので、[公式サイト](https://jmeter.apache.org/download_jmeter.cgi)の最新版を展開してください。

以下のものは翻訳されません。

- HTML Assertion
- テンプレートの内容
- DEPRECATEDなプラグイン
- CLI

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

