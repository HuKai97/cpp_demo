cmake_minimum_required(VERSION 3.0.2)

project(cpp_demo)

set(CMAKE_BUILD_TYPE Release CACHE STRING "set build type to Release")
# add_compile_options(-std=c++11 -g  -O0)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../install)

find_package(OpenCV REQUIRED)
message(STATUS "Find OpenCV include at ${OpenCV_INCLUDE_DIRS}")
message(STATUS "Find OpenCV libraries: ${OpenCV_LIBRARIES}")

include_directories(${PROJECT_SOURCE_DIR} ${OpenCV_INCLUDE_DIRS} include)

file(GLOB vision_detection_srcs src/*.cpp src/*.cu sort/*.cpp)

add_executable(cpp_demo ${vision_detection_srcs})

target_link_libraries(cpp_demo ${OpenCV_LIBRARIES} pthread libyaml-cpp.so boost_thread boost_system)
