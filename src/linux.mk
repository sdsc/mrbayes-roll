SRCDIRS = `find * -prune\
	  -type d 	\
	  ! -name CVS	\
          ! -name roll-test \
          ! -name build-\* \
	  ! -name .` roll-test
