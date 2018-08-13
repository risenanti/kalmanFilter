cmake_minimum_required(VERSION 2.8)

set (CMAKE_CXX_STANDARD 11)
set (CMAKE_BUILD_TYPE Debug)

project(kf_floats)

add_executable(kf_sine_double kf_sine_double.cpp)
add_executable(kf_bearing_double kf_bearings_double.cpp)
add_executable(kf_reEntry_double kf_reEntry_double.cpp)
