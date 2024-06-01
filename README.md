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

JMeter 5.4は.jmxファイルを読めないバグがあります。5.3または5.4.1以降を使ってください。

## インストール

### 共通

zipコマンドが必要です。

JMeterは[公式サイト](https://jmeter.apache.org/download_jmeter.cgi)のものを展開してください。
Chocolatey/Homebrew/apt/dnfなどでインストールされるものは、古かったり問題がある場合があります。

JMeterのGUIを終了し、`install.sh`を(必要に応じて管理者権限で)実行してください。
`$JMETER_HOME/lib/ext/\*.jar`を書き換えるので注意してください。

JMeterの実行時には`JMETER_HOME`および`JAVA_HOME`の設定は必要ありません。

### Windows

- cygwinとdos2unixが必要です。
- `install.sh`の実行には`JMETER_HOME`の設定が必要です。

### macOS

- JMeterを`/opt`に展開している場合は、`install.sh`の実行に`JMETER_HOME`の設定は不要です。
- install.shをsuやsudoで実行する場合、必要に応じてJMETER_HOMEが継承されるようにしてください。

### Linux

- 環境によっては日本語フォントのインストール・設定が必要です。
- JMeterを`/opt`に展開している場合は、`install.sh`の実行に`JMETER_HOME`の設定は不要です。
- `install.sh`をsuやsudoで実行する場合、必要に応じて`JMETER_HOME`が継承されるようにしてください。

起動時やズームイン・アウト時に以下の警告が出る場合は、

> [WARNING] System property 'awt.useSystemAAFontSettings' is not set. Using 'LCD HRGB antialiasing text mode'
> It's recommended to manually add the property to the JVM startup parameters on your platform for optimal text antialiasing.
> Refer to the [documentation](https://docs.oracle.com/javase/8/docs/technotes/guides/2d/flags.html#aaFonts)
> for more information on the possible values. [at com.github.weisj.darklaf.task.FontDefaultsInitTask]

以下のように設定してください(`JMETER_OPTS`では効きません)

> export JAVA_TOOL_OPTIONS="-Dawt.useSystemAAFontSettings=lcd"

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

- `.properties`ファイルを`\u`エンコーディングするのに必要な`native2ascii`はJDK 9以降には含まれません。
- `templates.xml`のname要素の内容は3文字以上なければなりません。

## 免責

翻訳の正確さについては保証しません。

本パッケージの使用に伴う損害・不利益・逸失利益などについて作者は一切責任を負いません。

本パッケージについてApacheその他への問い合わせはご遠慮ください。

## ライセンス

オリジナルに従います。

## 作者

Takayuki ITO <yuki@euc.jp>

