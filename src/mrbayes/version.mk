VERSION            = 3.2.2
PKGROOT            = /opt/mrbayes/$(VERSION)
NAME               = mrbayes
RELEASE            = 1
TARBALL_POSTFIX    = tar.gz

SRC_SUBDIR         = mrbayes

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_NAME)_$(SOURCE_VERSION)

TAR_GZ_PKGS           = $(SOURCE_PKG)
