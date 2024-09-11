#
# Makefile for mdm repack project
#

include define.mk



PKGNAME = $(PACKNAME)_$(UPSTREAM)+$(DISTR)-$(SUFFIX)_$(ARCH).$(EXT)

WORKDIR = $(WorkingDir)


.PHONY: unpack repack control help default
.DEFAULT: help

default: help

control:
	@echo '----> Extract the control information of the $(PKGNAME) package'
	@echo 'dpkg-deb -e $(PKGNAME)'

unpack:
	@echo '----> Extract content of the $(PKGNAME) package to $(WORKDIR)'
#	@echo 'dpkg-deb -x $(PKGNAME) $(WORKDIR)'
#	@echo 'dpkg-deb -i $(PKGNAME) $(WORKDIR)/$(DebCONTROL)'
# clear workdir
	rm -rf $(WORKDIR)
	dpkg-deb -x $(PKGNAME) $(WORKDIR)
	dpkg-deb -e $(PKGNAME) $(WORKDIR)/$(DebCONTROL)
	ls $(PKGNAME)
	ls $(WORKDIR)

repack:
	@echo '<---- Build the new pack $(PKGNAME) from the work directory' $(WORKDIR)
	@echo 'dpkg-deb -b $(WORKDIR) $(PKGNAME)'

help:
	@echo '**** Help of this file ****'
	@echo ''
	@echo 'make of make help : print this message'
	@echo 'make unpack   : unpack / extract contents of debian package achive' $(PKGNAME)
	@echo 'make control  : extract  control information from debian package achive $(PKGNAME)'
	@echo 'make repack   : pack / create  debian package achive' $(PKGNAME)
	@echo ''
	@echo 'debian package achive  is:' $(PKGNAME)
	@echo 'working tree directory is:' $(WORKDIR)
	


