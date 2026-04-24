cmake_minimum_required(VERSION 3.10)
project(gen)


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(nlohmann_json QUIET)


add_executable(gen main.cc)

target_include_directories(gen PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/gen)

target_link_libraries(gen PRIVATE nlohmann_json::nlohmann_json)
