doc:
	pod2markdown dsd > README.dsd.md
	pod2markdown dsd-cp > README.dsd-cp.md
	pod2markdown dsd-db > README.dsd-db.md

install:
	install -m 0755 dsd /usr/local/bin
	install -m 0755 dsd-cp /usr/local/bin
	install -m 0755 dsd-db /usr/local/bin
