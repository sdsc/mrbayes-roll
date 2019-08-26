ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
endif
COMPILERNAME := $(firstword $(subst /, ,$(ROLLCOMPILER)))

ifndef ROLLMPI
  ROLLMPI = rocks-openmpi
endif
MPINAME := $(firstword $(subst /, ,$(ROLLMPI)))

NAME           = sdsc-mrbayes-$(VERSION)
VERSION        = 3.2.7a
RELEASE        = 0
PKGROOT        = /opt/mrbayes/$(VERSION)

SRC_SUBDIR     = mrbayes

SOURCE_NAME    = MrBayes
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

UPDATE_NAME    = mrbayes
UPDATE_SUFFIX  = tar.gz
UPDATE_VERSION = 3.2.5-1040
UPDATE_PKG     = $(UPDATE_NAME)-$(UPDATE_VERSION).$(UPDATE_SUFFIX)
UPDATE_DIR     = $(UPDATE_PKG:%.$(UPDATE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG) $(UPDATE_PKG)

RPM.EXTRAS     = AutoReq:No\nAutoProv:No
RPM.PREFIX     = $(PKGROOT)
