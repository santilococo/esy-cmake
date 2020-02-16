
cmake:
	mkdir -p $(BUILDDIR)
	git clone https://github.com/kitware/cmake $(BUILDDIR)/cmake
	cd $(BUILDDIR)/cmake; git checkout c4ab098
	cd $(BUILDDIR)/cmake; ./bootstrap --prefix=$(PREFIX) --parallel=4
	cd $(BUILDDIR)/cmake; make -j4
	cd $(BUILDDIR)/cmake; make install
