
cmake-win32:
	mkdir -p $(BUILDDIR)
	curl https://cmake.org/files/v3.12/cmake-3.12.1-win32-x86.zip -o $(BUILDDIR)/cmake-temp.zip
	echo BUILDDIR: $(BUILDDIR) PREFIX: $(PREFIX)
	unzip $(BUILDDIR)/cmake-temp.zip -d $(BUILDDIR)
	mkdir -p $(PREFIX)/bin
	mkdir -p $(PREFIX)/share
	cp -r $(BUILDDIR)/cmake-3.12.1-win32-x86/bin $(PREFIX)/bin
	cp -r $(BUILDDIR)/cmake-3.12.1-win32-x86/share $(PREFIX)/share

cmake:
	mkdir -p $(BUILDDIR)
	git clone https://github.com/kitware/cmake $(BUILDDIR)/cmake
	cd $(BUILDDIR)/cmake; git checkout c4ab098
	cd $(BUILDDIR)/cmake; ./bootstrap --prefix=$(PREFIX)
	cd $(BUILDDIR)/cmake; make
	cd $(BUILDDIR)/cmake; make install
