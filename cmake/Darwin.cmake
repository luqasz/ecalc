set(OS_BUNDLE MACOSX_BUNDLE)
set(ICON_FILE_PATH ${PROJECT_SOURCE_DIR}/${RESOURCES_DIR}/${ICON_NAME}.icns)
set_source_files_properties(${ICON_FILE_PATH} PROPERTIES MACOSX_PACKAGE_LOCATION Resources)

set(MACOSX_BUNDLE_BUNDLE_NAME ${PROJECT_NAME})
set(MACOSX_BUNDLE_INFO_STRING ${PROJECT_NAME})
set(MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION})
set(MACOSX_BUNDLE_LONG_VERSION_STRING ${PROJECT_VERSION})
set(MACOSX_BUNDLE_SHORT_VERSION_STRING "${PROJECT_VERSION}")
set(MACOSX_BUNDLE_COPYRIGHT ${COPYRIGHT})
set(MACOSX_BUNDLE_GUI_IDENTIFIER ${IDENTIFIER})
set(MACOSX_BUNDLE_ICON_FILE ${ICON_NAME}.icns)


set(CMAKE_PREFIX_PATH  "/usr/local/lib;/usr/local/opt/qt5;/opt/local/lib;${CMAKE_PREFIX_PATH}")
set(CMAKE_INCLUDE_PATH "/usr/local/include;/usr/local/opt/qt5/include;/opt/local/include;${CMAKE_INCLUDE_PATH}")
set(CMAKE_LIBRARY_PATH "/usr/local/lib;/usr/local/opt/qt5/lib;/opt/local/lib;${CMAKE_LIBRARY_PATH}")
set(CMAKE_PROGRAM_PATH "/usr/local/bin;/usr/local/opt/qt5/bin;/opt/local/bin;${CMAKE_PROGRAM_PATH}")
include_directories("/usr/local/include" "/usr/local/opt/qt5/include" "/opt/local/include")
