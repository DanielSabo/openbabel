#
# cmake -DCMAKE_TOOLCHAIN_FILE="/home/cse220/files/Toolchain-riscv64-ubuntu.cmake"
# the name of the target operating system
set(CMAKE_SYSTEM_NAME RISCV64)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER   riscv64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER riscv64-linux-gnu-g++)

# where is the target environment located
# Probably set this wrong... - Daniel
set(CMAKE_FIND_ROOT_PATH  /usr/riscv64-linux-gnu
    /home/cse220/cross/install)

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)