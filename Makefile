
all:
	mkdir -p ja.ascii
	cd ja; for f in *.properties; do native2ascii -encoding utf8 $$f | dos2unix > ../ja.ascii/$$f; done

install:
	bash install.sh

extract:
	bash extract.sh

clean:
	rm -rf org
