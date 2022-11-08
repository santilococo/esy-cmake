if cmake.exe --version; then
    echo "cmake already in path..."
else
    echo "cmake not available, installing."
    c://ProgramData/Chocolatey/bin/choco.exe install cmake --installargs 'ADD_CMAKE_TO_PATH=User'

    CMAKE_FOLDER="C:\ProgramData\chocolatey\lib\cmake"
    ls -al $CMAKE_FOLDER
    CMAKE_DIRNAME="$(basename $CMAKE_FOLDER)"

    echo "folder: $CMAKE_FOLDER"
    echo "dirname: $CMAKE_DIRNAME"

    echo "Copying to $cur__bin/cmake.exe"
    cp "$CMAKE_FOLDER"/cmake.exe $cur__bin/cmake.exe
    cp /usr/bin/cygarchive-13.dll $cur__bin/cygarchive-13.dll

    echo "Copying to $cur__share/$CMAKE_DIRNAME"
    cp -r $CMAKE_FOLDER $cur__share/$CMAKE_DIRNAME
fi
