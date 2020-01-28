#! /usr/bin/bash

# set env

case "$OSTYPE" in
cygwin)
	export JMETER_HOME=`cygpath "$JMETER_HOME"`
	;;
darwin*)
	#export JMETER_HOME=/usr/local/Cellar/jmeter/5.2.1/libexec
	export JMETER_HOME=/opt/apache-jmeter-5.2.1
	;;
linux*)
	export JMETER_HOME=/opt/apache-jmeter-5.2.1
	;;
esac

# check commands

if ! type zip > /dev/null 2>&1
then
	echo "zip not found"
	exit 1
fi
if ! type native2ascii > /dev/null 2>&1
then
	echo "native2ascii not found"
	exit 1
fi

# backup

pushd "$JMETER_HOME/lib/ext"
[ -d orig ] || mkdir orig
cp -n *.jar orig
popd

# install props

IFS=,
for f in ApacheJMeter_*.jar.txt
do
	TARGET_JAR=$JMETER_HOME/lib/ext/${f%.txt}
	if [ -w $TARGET_JAR ]
	then
		rm -rf org
		cat $f | while read l
		do
			set -- $l
			path=$1
			file=$2_ja.properties
			mkdir -p $path
			#native2ascii -encoding utf8 ja/$file $path/$file
			cp ja.ascii/$file $path/$file
		done
		zip -u -r $TARGET_JAR org
	fi
done
rm -rf org

# install template catalog

pushd $JMETER_HOME/bin/templates
[ -f templates.xml.orig ] || mv templates.xml templates.xml.orig
popd
cp ja/templates.xml $JMETER_HOME/bin/templates

# install setenv

echo 'JMETER_LANGUAGE=-Duser.language="ja"' >> $JMETER_HOME/bin/setenv.sh
echo 'set JMETER_LANGUAGE=-Duser.language="ja"' | unix2dos >> $JMETER_HOME/bin/setenv.bat
