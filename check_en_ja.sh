#! /bin/bash

cd en
for en_file in messages.properties #*.properties
do
	ja_file=../ja/${en_file//\./_ja.}
	echo $en_file $ja_file
	grep -v "^#" $en_file | cut -d = -f 1 > /tmp/en.$$$.txt
	grep -v "^#" $ja_file | cut -d = -f 1 > /tmp/ja.$$$.txt
	diff -u  /tmp/en.$$$.txt /tmp/ja.$$$.txt
done
rm /tmp/en.$$$.txt /tmp/ja.$$$.txt
