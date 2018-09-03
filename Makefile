
cmake-win32:
	curl https://cmake.org/files/v3.12/cmake-3.12.1-win32-x86.zip -o cmake-temp.zip
	unzip cmake-temp.zip -d $(PREFIX)
	rm -rf cmake-temp.zip

cmake:
	git submodule update --init
	cd cmake; ./bootstrap --prefix=$(PREFIX)
	cd cmake; make
	cd cmake; make install
