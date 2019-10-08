# Makefile, boiled down, simplified version of Lou Berger's
# (lberger@labn.net) from data-plane-drafts [1] by Henrik
#
# (https://github.com/detnet-wg/data-plane-drafts/blob/master/Makefile.common)

.PHONY: clean rebuild idnits

%.txt: %.xml
	xml2rfc $< -o $@ --text

# Get nitpicks
idnits: detnet-security.txt
	@if [ ! -f bin/idnits ] ; then \
		mkdir bin					;\
		wget http://tools.ietf.org/tools/idnits/idnits -O bin/idnits ;\
		chmod 755 bin/idnits				;\
	fi
	./bin/idnits $< > $@.out
	@cat $@.out
	@grep -q 'Summary: 0 error' $@.out

clean:
	rm -f $@.out
	rm -f detnet-security.txt

rebuild:
	$(MAKE) clean
	$(MAKE) idnits
