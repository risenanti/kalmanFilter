cmake_minimum_required(VERSION 2.8)

set (CMAKE_CXX_STANDARD 11)
#set (CMAKE_BUILD_TYPE Debug)

project(kf_floats)

add_executable(kf_sine kal_filter_2d_sine.cpp)
add_executable(kf_bearing kal_fil_3d_bearings.cpp)
add_executable(kf_reEntry kal_fil_5d_reEntry.cpp)
