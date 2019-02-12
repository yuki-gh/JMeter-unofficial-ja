
JMETER_HOME = C:/server/apache-jmeter-5.0

JMETER_CORE_JAR = $(JMETER_HOME)/lib/ext/ApacheJMeter_core.jar
PROP_PATH = org/apache/jmeter/resources

JMETER_COMP_JAR = $(JMETER_HOME)/lib/ext/ApacheJMeter_components.jar
SAMPLER_PATH = org/apache/jmeter/sampler
CONFIG_PATH = org/apache/jmeter/config

JMETER_JAVA_JAR = $(JMETER_HOME)/lib/ext/ApacheJMeter_java.jar
JAVA_PATH = org/apache/jmeter/protocol/java/sampler

build:
	mkdir -p $(PROP_PATH) $(SAMPLER_PATH) $(JAVA_PATH) $(CONFIG_PATH)
	native2ascii -encoding utf8 ja/messages_ja.properties $(PROP_PATH)/messages_ja.properties
	native2ascii -encoding utf8 ja/DebugSamplerResources_ja.properties $(SAMPLER_PATH)/DebugSamplerResources_ja.properties
	native2ascii -encoding utf8 ja/JSR223SamplerResources_ja.properties $(JAVA_PATH)/JSR223SamplerResources_ja.properties
	native2ascii -encoding utf8 ja/CSVDataSetResources_ja.properties $(CONFIG_PATH)/CSVDataSetResources_ja.properties
	zip -u $(JMETER_CORE_JAR) $(PROP_PATH)/messages_ja.properties
	zip -u $(JMETER_COMP_JAR) $(SAMPLER_PATH)/DebugSamplerResources_ja.properties
	zip -u $(JMETER_COMP_JAR) $(CONFIG_PATH)/CSVDataSetResources_ja.properties
	zip -u $(JMETER_JAVA_JAR) $(JAVA_PATH)/JSR223SamplerResources_ja.properties

import:
	unzip $(JMETER_JAR) $(PROP_PATH)/*
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages.properties en/messages.properties.orig
	native2ascii -encoding utf8 -reverse $(PROP_PATH)/messages_ja.properties ja/messages_ja.properties.orig


clean:
	rm -rf org
