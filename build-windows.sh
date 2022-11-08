if cmake.exe --version; then
    echo "cmake already in path..."
else
    echo "cmake not available, installing."
    #ROOT="$(cygpath -m /)"
    #echo "cygwin root: $ROOT"
    #LOCAL_PACKAGE_DIR="$(cygpath -w /var/cache/setup)"
    choco install cmake --installargs 'ADD_CMAKE_TO_PATH=User'

    #$ROOT/setup-x86_64.exe --root $ROOT -q --packages=cmake,libuv1 --local-package-dir $LOCAL_PACKAGE_DIR --site=https://mirrors.kernel.org/sourceware/cygwin/ --no-desktop --no-startmenu --no-shortcuts --verbose

    CMAKE_FOLDER="$(find /usr/share -maxdepth 1 -name cmake-*)"
    CMAKE_DIRNAME="$(basename $CMAKE_FOLDER)"

    echo "folder: $CMAKE_FOLDER"
    echo "dirname: $CMAKE_DIRNAME"

    echo "Copying to $cur__bin/cmake.exe"
    cp /usr/bin/cmake.exe $cur__bin/cmake.exe
    cp /usr/bin/cygarchive-13.dll $cur__bin/cygarchive-13.dll

    echo "Copying to $cur__share/$CMAKE_DIRNAME"
    cp -r $CMAKE_FOLDER $cur__share/$CMAKE_DIRNAME
fi
