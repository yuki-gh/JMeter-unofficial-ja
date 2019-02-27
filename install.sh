#! /usr/bin/bash

# set env

if [ "$OSTYPE" = cygwin ]
then
	export JAVA_HOME=`cygpath "$JAVA_HOME"`
	export JMETER_HOME=`cygpath "$JMETER_HOME"`
fi

# check commands

if ! type -p zip > /dev/null
then
	echo "zip not found"
	exit 1
fi
if ! type -p native2ascii > /dev/null
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
	rm -rf org
	cat $f | while read l
	do
		set -- $l
		path=$1
		file=$2_ja.properties
		mkdir -p $1
		$JAVA_HOME/bin/native2ascii -encoding utf8 ja/$file $path/$file
		#echo zip -u $JMETER_HOME/lib/ext/${f%.txt} $path/$file
	done
	zip -u -r $JMETER_HOME/lib/ext/${f%.txt} org
done
rm -rf org
