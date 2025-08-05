cmake_minimum_required(VERSION 3.10)
project(MyCProject C)
set(CMAKE_C_STANDARD 99)
# Add include directory
include_directories(include)

# Main executable (C sources in src/c)
add_executable(myapp src/c/main.c src/c/utils.c)

# Add testing
# Removing testing for now to test the CI/CD pipeline, TB enabled later
# Enable testing
enable_testing()

# Test executable (test sources in tests, C sources in src/c)
add_executable(test_utils tests/test_utils.c src/c/utils.c)
add_test(NAME UnitTests COMMAND test_utils)