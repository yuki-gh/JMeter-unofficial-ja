
all:
	mkdir ja.ascii
	cd ja; for f in *.properties; do native2ascii -encoding utf8 $$f ../ja.ascii/$$f; done

install:
	/usr/bin/bash install.sh

clean:
	rm -rf org
