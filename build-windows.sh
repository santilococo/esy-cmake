
if cmake --version; then
    echo "cmake already in path, not installing."
else
    echo "cmake not available, installing."
    ROOT="$(cygpath -m /)"
    echo "cygwin root: $ROOT"
    /setup-x86_64.exe --root $ROOT -q --packages=cmake
fi


CMAKE_FOLDER="$(find /usr/share -maxdepth 1 -name cmake-*)"
CMAKE_DIRNAME="$(basename $CMAKE_FOLDER)"

echo "folder: $CMAKE_FOLDER"
echo "dirname: $CMAKE_DIRNAME"

cp /usr/bin/cmake.exe $cur__bin/cmake.exe
cp -r $CMAKE_FOLDER $cur__share/$CMAKE_DIRNAME
