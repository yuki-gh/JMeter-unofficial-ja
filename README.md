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
- ja.ascii/*_ja.properties
- ja/templates.xml
- Makefile
- README.md
- Test.jmx

## プラットフォーム

- Apache JMeter 5.4.1-SNAPSHOT
- Windows
	- Windows 10 Home x64 1909 日本語版
	- cygwin 3.1
	- AdoptOpenJDK 8
- macOS 10.15 Catalina
	- AdoptOpenJDK 8
- Linux (すべてWSL)
	- Pengwin 11 bullseye, Debian 10 buster, Ubuntu 20.04, Fedora Remix 31
	- X410
	- OpenJDK 8

## インストール

### 共通

zipが必要です。
JMETER_HOMEの設定が必要です。

JMeterのGUIを終了し、install.shを(必要に応じて管理者権限で)実行してください。
$JMETER_HOME/lib/ext/*.jarを書き換えるので注意してください。

### Windows

cygwinとdos2unixが必要です。

### macOS

Homebrewでインストールした5.3では、以下の点に注意してください。

- 「ツール」メニューの下にバグっているエントリがあり、翻訳されません。
- 言語設定が保存されません。
- 書き換えられる対象は$JMETER_HOME/libexec/lib/extとなります。

### Linux

Debian系(Ubuntu/Pengwin)の場合、aptでインストールされるJMeterは古いので、[公式サイト](https://jmeter.apache.org/download_jmeter.cgi)の最新版を展開してください。

install.shをsuやsudoで実行する場合、JMETER_HOMEが継承されるようにしてください。

環境によっては日本語フォントのインストール・設定が必要です。

## 注意

以下のものは翻訳されません。

- HTML Assertion
- テンプレートに含まれるテスト計画のコメント等
- DEPRECATEDなプラグイン
- CLI

表示されているキーボードショートカットが機能しない箇所があります。

翻訳が反映されない箇所があります。

語末の長音符は原則省略しています。

## 免責

翻訳の正確さについては保証しません。

本パッケージの使用に伴う損害・不利益・逸失利益などについて作者は一切責任を負いません。

本パッケージについてApacheその他への問い合わせはご遠慮ください。

## ライセンス

オリジナルに従います。

## 作者

Takayuki ITO <yuki@euc.jp>

