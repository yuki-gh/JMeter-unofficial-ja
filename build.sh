#! /usr/bin/bash
JMETER_HOME=C:/Server/apache-jmeter-5.0
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
		native2ascii -encoding utf8 ja/$file $1/$file
		#echo zip -u ${f%.txt} $1/$file
	done
	zip -u -r $JMETER_HOME/lib/ext/${f%.txt} org
done
