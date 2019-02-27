#! /usr/bin/bash

if [ "$OSTYPE" = cygwin ]
then
	export JMETER_HOME=`cygpath $JMETER_HOME`
fi

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
		native2ascii -encoding utf8 ja/$file $path/$file
		#echo zip -u $JMETER_HOME/lib/ext/${f%.txt} $path/$file
	done
	zip -u -r $JMETER_HOME/lib/ext/${f%.txt} org
done
