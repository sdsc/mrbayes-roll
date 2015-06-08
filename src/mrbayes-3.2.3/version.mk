ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
endif
COMPILERNAME := $(firstword $(subst /, ,$(ROLLCOMPILER)))

ifndef ROLLMPI
  ROLLMPI = rocks-openmpi
endif

MPINAME := $(firstword $(subst /, ,$(ROLLMPI)))


VERSION            = 3.2.3
NAME               = sdsc-mrbayes
RELEASE            = 1
TARBALL_POSTFIX    = tar.gz

SRC_SUBDIR         = mrbayes

SOURCE_NAME        = mrbayes
SOURCE_VERSION     = 3.2.3
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)
PKGROOT            = /opt/mrbayes/$(VERSION)

TAR_GZ_PKGS        = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
