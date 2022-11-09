if cmake.exe --version; then
    echo "cmake already in path..."
else
    echo "cmake not available, installing."
    c://ProgramData/Chocolatey/bin/choco.exe install cmake --installargs 'ADD_CMAKE_TO_PATH=User'

    CMAKE_FOLDER="C:\Program Files\CMake\bin"
    CMAKE_DIRNAME="$(basename $CMAKE_FOLDER)"

    echo "folder: $CMAKE_FOLDER"
    echo "dirname: $CMAKE_DIRNAME"

    echo "Copying to $cur__bin/cmake.exe"
    cp "$CMAKE_FOLDER"/cmake.exe $cur__bin/cmake.exe

    echo "Copying to $cur__share/cmake"
    cp -r $CMAKE_FOLDER $cur__share/cmake
    
    OUTPUT="$($cur__bin/cmake.exe --version)"
    echo "cmake version is: $OUTPUT"
fi
