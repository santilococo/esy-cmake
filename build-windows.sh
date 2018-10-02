if cmake.exe --version; then
    echo "cmake already in path..."
else
    echo "cmake not available, installing."
    ROOT="$(cygpath -m /)"
    echo "cygwin root: $ROOT"
    /setup-x86_64.exe --root $ROOT -q --packages=cmake

    CMAKE_FOLDER="$(find /usr/share -maxdepth 1 -name cmake-*)"
    CMAKE_DIRNAME="$(basename $CMAKE_FOLDER)"

    echo "folder: $CMAKE_FOLDER"
    echo "dirname: $CMAKE_DIRNAME"

    echo "Copying to $cur__bin/cmake.exe"
    cp /usr/bin/cmake.exe $cur__bin/cmake.exe

    echo "Copying to $cur__share/$CMAKE_DIRNAME"
    cp -r $CMAKE_FOLDER $cur__share/$CMAKE_DIRNAME
fi
