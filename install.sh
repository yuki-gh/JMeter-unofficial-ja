#! /usr/bin/bash

# set env

case "$OSTYPE" in
cygwin)
	export JAVA_HOME=`cygpath "$JAVA_HOME"`
	export JMETER_HOME=`cygpath "$JMETER_HOME"`
	;;
darwin*)
	export JMETER_HOME=/usr/local/Cellar/jmeter/5.0/libexec
	;;
linux*)
	export JMETER_HOME=/usr/local/jmeter
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

# install

IFS=,
for f in *.jar.txt
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
		mkdir -p $1
		native2ascii -encoding utf8 ja/$file $path/$file
		#echo zip -u $JMETER_HOME/lib/ext/${f%.txt} $path/$file
	done
	zip -u -r $TARGET_JAR org
fi
done
rm -rf org
