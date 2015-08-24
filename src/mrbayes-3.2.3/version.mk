ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
endif
COMPILERNAME := $(firstword $(subst /, ,$(ROLLCOMPILER)))

ifneq ("$(ROLLOPTS)", "$(subst mrbayes_othermpi=,,$(ROLLOPTS))")
  override ROLLMPI = $(subst mrbayes_othermpi=,,$(filter mrbayes_othermpi=%,$(ROLLOPTS)))
else ifndef ROLLMPI
  ROLLMPI = rocks-openmpi
endif
MPINAME := $(firstword $(subst /, ,$(ROLLMPI)))

NAME           = sdsc-mrbayes-$(VERSION)
VERSION        = 3.2.3
RELEASE        = 3
PKGROOT        = /opt/mrbayes/$(VERSION)

SRC_SUBDIR     = mrbayes

SOURCE_NAME    = mrbayes
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = 3.2.3
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
