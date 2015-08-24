ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
endif

ifndef ROLLMPI
  ROLLMPI = rocks-openmpi
endif

PACKAGE     = mrbayes
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 5
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

EXTRA_MODULE_VERSIONS = 3.2.3

RPM.EXTRAS  = AutoReq:No

