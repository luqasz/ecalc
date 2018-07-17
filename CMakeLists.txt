cmake_minimum_required(VERSION 3.7)
project(ecalc)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(PROJECT_VERSION "0.0.1")
set(COPYRIGHT "Łukasz Kostka (c). All rights reserved.")
set(IDENTIFIER "pl.netng")
set(ICON_NAME icon)
set(RESOURCES_DIR resources)
set(CMAKE_MODULE_PATH
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/packaging
    )

include(${CMAKE_SYSTEM_NAME})

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed
set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)

find_package(Qt5 COMPONENTS
    Core
    Widgets
    REQUIRED
    )

add_executable(${PROJECT_NAME} ${OS_BUNDLE}
    mainwindow.cpp
    main.cpp
    resistor.cpp
    ${ICON_FILE_PATH}
    )

target_link_libraries(${PROJECT_NAME}
    Qt5::Widgets
    )


include(packaging)
