cmake_minimum_required(VERSION 3.8)
project(CC)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Boost REQUIRED)

add_executable(CC src/cc.cpp)

target_include_directories(CC PRIVATE ${Boost_INCLUDE_DIRS})
target_link_libraries(CC PRIVATE Boost::boost)
