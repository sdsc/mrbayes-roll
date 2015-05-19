REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

$(VERSION_INC): $(VERSION_SRC)
	/bin/grep 'SOURCE_VERSION.*=' $(VERSION_SRC) > $@
	/bin/grep 'ROLLMPI=' $(MAKEFILE_SRC) >> $@
	cat $@ |sed 's/SOURCE_//' >.tmp
	mv .tmp $@

build:

install:: multiplempi-modulefile-install

clean::
	rm -f $(VERSION_INC)

multiplempi-modulefile-install:
	mkdir -p -m 755 $(ROOT)/$(PKGROOT)
	for V in $(VERSION); do \
	  cp *.module $(ROOT)/$(PKGROOT)/$$V; \
	  cp *.version $(ROOT)/$(PKGROOT)/.version.$$V; \
	  perl -pi -e 's#COMPILERNAME#$(COMPILERNAME)#g;' \
	           -e 's#MPINAME#$(MPINAME)#g;' \
	           -e 's#ROLLCOMPILER#$(ROLLCOMPILER)#g;' \
	           -e 's#ROLLMPI#$(ROLLMPI)#g;' \
	           -e 's#ROLLOPTS#$(ROLLOPTS)#g;' \
	           -e 's#ROLLPY#$(ROLLPY)#g;' \
	           -e "s#VERSION#$$V#g;" \
	    $(ROOT)/$(PKGROOT)/.version.$$V $(ROOT)/$(PKGROOT)/$$V; \
	done; \
	for V in $(EXTRA_MODULE_VERSIONS); do \
	  cp *.module $(ROOT)/$(PKGROOT)/$$V; \
	  cp *.version $(ROOT)/$(PKGROOT)/.version.$$V; \
          rollmpi=`grep 'ROLLMPI=' $(REDHAT.ROOT)/src/$(PACKAGE)-$${V}/Makefile|sed 's/\s//g'|sed 's/ROLLMPI=//'`; \
          echo $$rollmpi; \
	  perl -pi -e 's#COMPILERNAME#$(COMPILERNAME)#g;' \
	           -e 's#MPINAME#$(MPINAME)#g;' \
	           -e 's#ROLLCOMPILER#$(ROLLCOMPILER)#g;' \
	           -e "s#ROLLMPI#$${rollmpi}#g;" \
	           -e 's#ROLLOPTS#$(ROLLOPTS)#g;' \
	           -e 's#ROLLPY#$(ROLLPY)#g;' \
	           -e "s#VERSION#$$V#g;" \
	    $(ROOT)/$(PKGROOT)/.version.$$V $(ROOT)/$(PKGROOT)/$$V; \
        done
	ln -s $(PKGROOT)/.version.$(VERSION) $(ROOT)/$(PKGROOT)/.version
