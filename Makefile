prefix = $(HOME)
bindir = $(prefix)/bin
sharedir = $(prefix)/share

RM = rm -f
TAR = tar
FIND = find
INSTALL = install

ifneq ($(findstring $(MAKEFLAGS),s),s)
	QUIET_GEN   = @echo '  GEN   ' $@;
	QUIET_CP    = @echo '  CP    ' $@;
	QUIET_RM    = @echo '  RM    ' $@;
	QUIET_MKDIR = @echo '  MKDIR ' $@;
endif

ALL_SCRIPTS = jhbuild-mex

install:
	$(INSTALL) -d -m 755 '$(DESTDIR)$(bindir)'
	$(INSTALL) -m 755 build/jhbuild-mex.sh '$(DESTDIR)$(bindir)/jhbuild-mex'
	$(INSTALL) -m 644 jhbuildrc-mex '$(DESTDIR)$(HOME)/.jhbuildrc-mex'
