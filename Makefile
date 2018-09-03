
cmake-win32:
	curl https://cmake.org/files/v3.12/cmake-3.12.1-win32-x86.zip -o $(BUILDDIR)/cmake-temp.zip
	unzip $(BUILDDIR)/cmake-temp.zip -d $(PREFIX)

cmake:
	git clone https://github.com/kitware/cmake
	cd cmake; git checkout c4ab098
	cd cmake; ./bootstrap --prefix=$(PREFIX)
	cd cmake; make
	cd cmake; make install
