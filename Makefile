
JMETER_JAR = C:/server/apache-jmeter-5.0/lib/ext/ApacheJMeter_core.jar
PROP_PATH = org/apache/jmeter/resources

import:
	unzip $(JMETER_JAR) $(PROP_PATH)/*
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages.properties en_orig.txt
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages_ja.properties ja_orig.txt

build:
	mkdir -p $(PROP_PATH)
	native2ascii -encoding utf8 ja.txt $(PROP_PATH)/messages_ja.properties
	zip -f $(JMETER_JAR) $(PROP_PATH)/messages_ja.properties
