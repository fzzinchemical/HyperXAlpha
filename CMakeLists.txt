cmake_minimum_required(VERSION 3.10)

project (HyperX)

set(C++_STANDARD 17)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/bin)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(PkgConfig REQUIRED)
find_package(wxWidgets REQUIRED COMPONENTS core base)
find_package(hidapi REQUIRED)

# Add nlohmann/json
include(FetchContent)
FetchContent_Declare(
  json
  GIT_REPOSITORY https://github.com/nlohmann/json.git
  GIT_TAG v3.10.5
)
FetchContent_MakeAvailable(json)

add_executable(HyperX src/hyperxApp.cpp src/hyperxFrame.cpp src/SwitchCtrl.cpp src/dialog.cpp)
include(${wxWidgets_USE_FILE})
target_link_libraries(HyperX PRIVATE hidapi::libusb ${wxWidgets_LIBRARIES})
target_link_libraries(HyperX PRIVATE nlohmann_json::nlohmann_json)
include_directories(HyperX PRIVATE ${CMAKE_HOME_DIRECTORY}/include ${wxWidgets_INCLUDE_DIRS})
