
JMETER_JAR = $(JMETER_HOME)/lib/ext/ApacheJMeter_core.jar
PROP_PATH = org/apache/jmeter/resources

import:
	unzip $(JMETER_JAR) $(PROP_PATH)/*
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages.properties en_orig.txt
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages_ja.properties ja_orig.txt

build:
	$(MKDIRP) $(PROP_PATH)
	native2ascii -encoding utf8 ja.txt $(PROP_PATH)/messages_ja.properties
	zip -f $(JMETER_JAR) $(PROP_PATH)
