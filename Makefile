
cmake-win32:
	curl https://cmake.org/files/v3.12/cmake-3.12.1-win32-x86.zip -o $(BUILDDIR)/cmake-temp.zip
	unzip $(BUILDDIR)/cmake-temp.zip -d $(PREFIX)

cmake:
	git clone https://github.com/kitware/cmake $(BUILDDIR)/cmake
	cd $(BUILDDIR)/cmake; git checkout c4ab098
	cd $(BUILDDIR)/cmake; ./bootstrap --prefix=$(PREFIX)
	cd $(BUILDDIR)/cmake; make
	cd $(BUILDDIR)/cmake; make install
