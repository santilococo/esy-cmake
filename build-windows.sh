
if cmake --version; then
    echo "cmake already in path, not installing."
else
    echo "cmake not available, installing."
    ROOT="$(cygpath -m /)"
    echo "cygwin root: $ROOT"
    # /setup-x86_64.exe --root $ROOT -q --packages=cmake
fi
