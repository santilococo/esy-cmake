BUILDDIR=$cur__root/_build
PREFIX=$cur__install

echo Using builddir: $BUILDDIR
echo Using prefix: $PREFIX

mkdir -p $BUILDDIR
git clone https://github.com/kitware/cmake $BUILDDIR/cmake
cd $BUILDDIR/cmake; git checkout c4ab098
cd $BUILDDIR/cmake; ./bootstrap --prefix=$PREFIX
cd $BUILDDIR/cmake; make
cd $BUILDDIR/cmake; make install
