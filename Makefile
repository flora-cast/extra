CPSB ?= /usr/bin/cpsb


	
make-all: 
	cd ./public/packages/; \
		for package in *.hb; do \
			$(CPSB) make $$package; \
		done

build:
	cd ./public/packages && $(CPSB) build && mv index index.b3 ../


clean: 
	cd ./public/packages && rm -f *.bin *.hcl *.hash
	rm -f ./public/index ./public/index.b3
