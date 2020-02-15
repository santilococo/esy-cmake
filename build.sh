BUILDDIR=$cur__root/_build
PREFIX=$cur__install


echo Using builddir: $BUILDDIR
echo Using prefix: $PREFIX

mkdir -p $BUILDDIR
git clone https://github.com/kitware/cmake $BUILDDIR/cmake
cd $BUILDDIR/cmake; git checkout 7700df9b1ef66761cad08cfc08344d5b27660e9f
cd $BUILDDIR/cmake; ./bootstrap --prefix=$PREFIX --parallel=4
cd $BUILDDIR/cmake; make -j4
cd $BUILDDIR/cmake; make install

