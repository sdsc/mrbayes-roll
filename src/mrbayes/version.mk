REVISION           = r.879
VERSION            = 3.2.2.$(REVISION)
PKGROOT            = /opt/mrbayes/$(VERSION)
NAME               = mrbayes
RELEASE            = 1
TARBALL_POSTFIX    = tar.gz

SRC_SUBDIR         = mrbayes

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = 3.2.2
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_NAME)_$(SOURCE_VERSION)

REVISION_NAME      = mrbayes-code-879-trunk
REVISION_SUFFIX    = zip
REVISION_PKG       = $(REVISION_NAME).$(REVISION_SUFFIX)

TAR_GZ_PKGS        = $(SOURCE_PKG)
ZIP_PKGS           = $(REVISION_PKG)
