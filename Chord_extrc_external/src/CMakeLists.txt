# Updated CMake minimum version with range syntax
cmake_minimum_required(VERSION 3.10...3.28)

project(nn_tilde LANGUAGES CXX)

# --------------------------------------------------
# C++17 Configuration (MUST come first)
# --------------------------------------------------
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Force C++17 flag at compiler level
add_compile_options(-std=c++17)

# --------------------------------------------------
# System Specific Configuration
# --------------------------------------------------
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if(APPLE)
    # Explicit ARM64 architecture for Apple Silicon
    if(NOT CMAKE_OSX_ARCHITECTURES)
        set(CMAKE_OSX_ARCHITECTURES "arm64")
    endif()
    
    # Additional Apple-specific flags
    add_compile_options(-stdlib=libc++)
    add_link_options(-stdlib=libc++)
    
    message(STATUS "Building for Apple Silicon: ${CMAKE_OSX_ARCHITECTURES}")
endif()

# --------------------------------------------------
# Project Configuration
# --------------------------------------------------
# Additional compiler flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -faligned-allocation")

# --------------------------------------------------
# Subdirectories (after all configurations)
# --------------------------------------------------
add_subdirectory(backend)

if(APPLE OR MSVC)
    add_subdirectory(frontend/maxmsp/chord_extrc)
endif()

# --------------------------------------------------
# Verification
# --------------------------------------------------
message(STATUS "C++ standard: ${CMAKE_CXX_STANDARD}")
message(STATUS "C++ flags: ${CMAKE_CXX_FLAGS}")
message(STATUS "Compile options: ${CMAKE_CXX_COMPILE_OPTIONS}")
