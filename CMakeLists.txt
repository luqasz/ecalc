cmake_minimum_required(VERSION 3.7)
project(ecalc)

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

add_executable(${PROJECT_NAME}
    mainwindow.cpp
    main.cpp
    resistor.cpp
    )

target_link_libraries(${PROJECT_NAME}
    Qt5::Widgets
    )
