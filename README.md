# JMeter非公式日本語カタログ
# Unofficial Japanese Catalog for JMeter

## 概要

Apache JMeterのGUIを日本語化します。

## プラットフォーム

- Apache JMeter 5.6.3
- Windows
	- Windows 11 Home x64 22H2
	- Cygwin 3.5.3
	- Oracle JRE 8
- macOS
	- macOS Sonoma 14.5
	- Oracle JRE 8
- chromeOS
	- chromeOS 125
	- Debian 12 bookworm
	- OpenJDK 17

JMeter 5.4は.jmxファイルを読めないバグがあるので対応しません。
5.3または5.4.1以降を使ってください。

## インストール

### 共通

zipコマンドが必要です。

JMeterは[公式サイト](https://jmeter.apache.org/download_jmeter.cgi)のものを展開してください。
Chocolatey/Homebrew/apt/dnfなどでインストールされるものは、古かったり問題がある場合があります。

JMeterのGUIを終了し、install.shを(必要に応じて管理者権限で)実行してください。
$JMETER_HOME/lib/ext/\*.jarを書き換えるので注意してください。

JMeterの実行時にはJMETER_HOMEおよびJAVA_HOMEの設定は必要ありません。

### Windows

- cygwinとdos2unixが必要です。
- install.shの実行にはJMETER_HOMEの設定が必要です。

### macOS

- JMeterを/optに展開している場合は、install.shの実行にJMETER_HOMEの設定は不要です。
- install.shをsuやsudoで実行する場合、必要に応じてJMETER_HOMEが継承されるようにしてください。

### Linux

- 環境によっては日本語フォントのインストール・設定が必要です。
- JMeterを/optに展開している場合は、install.shの実行にJMETER_HOMEの設定は不要です。
- install.shをsuやsudoで実行する場合、必要に応じてJMETER_HOMEが継承されるようにしてください。

## 注意

- 以下のものは翻訳されません。
  - HTML Assertion
  - テンプレートに含まれるテスト計画のコメント等
  - DEPRECATEDなプラグイン
  - CLI関連、起動時のコンソール出力
- 表示されているキーボードショートカットが機能しない箇所があります。
- 翻訳が反映されない箇所があります。
- 語末の長音符は原則省略しています。

編集する場合は以下の点に注意してください。

- .propertiesファイルを\uエンコーディングするのに必要なnative2asciiはJDK 9以降には含まれません。
- templates.xmlのname要素の内容は3文字以上なければなりません。

## 免責

翻訳の正確さについては保証しません。

本パッケージの使用に伴う損害・不利益・逸失利益などについて作者は一切責任を負いません。

本パッケージについてApacheその他への問い合わせはご遠慮ください。

## ライセンス

オリジナルに従います。

## 作者

Takayuki ITO <yuki@euc.jp>

