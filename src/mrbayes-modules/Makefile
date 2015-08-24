REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

ifneq ("$(ROLLOPTS)", "$(subst mrbayes_othermpi=,,$(ROLLOPTS))")
  EXTRAMPI = $(subst mrbayes_othermpi=,,$(filter mrbayes_othermpi=%,$(ROLLOPTS)))
endif

$(VERSION_INC): $(VERSION_SRC)
	/bin/grep 'VERSION.*=' $(VERSION_SRC) > $@
 
build:

install:: typical-modulefile-install
	if test -n "$(EXTRAMPI)"; then \
	  cd $(ROOT)/$(PKGROOT); \
	  perl -pi -e 's/$(ROLLMPI)/$(EXTRAMPI)/g' $(EXTRA_MODULE_VERSIONS); \
	fi

clean::
	rm -f $(VERSION_INC)
