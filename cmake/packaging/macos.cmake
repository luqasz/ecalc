set(CPACK_DMG_DISABLE_APPLICATIONS_SYMLINK "OFF")
set(CPACK_GENERATOR "DragNDrop")

install(
    TARGETS
        ${PROJECT_NAME}
    BUNDLE
        DESTINATION .
        COMPONENT Runtime
    )
