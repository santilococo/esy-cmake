
cmake-win32:
	git submodule update --init
	cd cmake; ./bootstrap --prefix=$(PREFIX) CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ CXXFLAGS="-static -static-libgcc -static-libstdc++ -std=c++11"
	cd cmake; make
	cd cmake; make install
