PACKAGE     = mrbayes
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 3
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)/version.mk
MAKEFILE_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)/Makefile
EXTRA_MAKEFILE_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)-$(VERSION)/Makefile
VERSION_INC = version.inc
include $(VERSION_INC)

EXTRA_MODULE_VERSIONS = 3.2.3 3.2.4

RPM.EXTRAS  = AutoReq:No

