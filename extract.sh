#! /bin/bash
export JMETER_HOME=`cygpath "$JMETER_HOME"`

for f in ApacheJMeter_*.jar.txt
do
	TARGET_JAR=$JMETER_HOME/lib/ext/${f%.txt}
	[ -r $TARGET_JAR ] && unzip $TARGET_JAR `sed -e 's/,/\//' -e 's/$/.properties/' $f` 
done
mkdir en.orig
mv `find org/apache/jmeter -name '*.properties'` en.orig
rm -rf org
