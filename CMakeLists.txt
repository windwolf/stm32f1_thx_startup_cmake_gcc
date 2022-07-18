# =================NOTE================================
# | 这个文件是所有cmake结构的组织者, 不要随意改动      |
# =================NOTE================================
# CMAKE版本检查
cmake_minimum_required(VERSION 3.17.0)
message(STATUS "CMake version: ${CMAKE_VERSION}")

# 防止启动检测
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# 导入目标文件定义
include(${CMAKE_CURRENT_SOURCE_DIR}/project-settings.cmake)

include(${CMAKE_SOURCE_DIR}/Libs/wwCmake/prepare_env.cmake)

project(${PROJECT_NAME} C CXX ASM)
set(CMAKE_CXX_STANDARD 17)
message(STATUS "Building project: ${PROJECT_NAME}")

include(${CMAKE_SOURCE_DIR}/Libs/wwCmake/loader.cmake)
