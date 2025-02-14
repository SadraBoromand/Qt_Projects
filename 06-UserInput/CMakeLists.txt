cmake_minimum_required(VERSION 3.16)

project(06-UserInput VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(app06-UserInput
    main.cpp
)

qt_add_qml_module(app06-UserInput
    URI 06-UserInput
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES LabeledTextInput.qml
        QML_FILES Main2_LabeledTextInput.qml
        QML_FILES Main3_EditableText.qml
        QML_FILES MouseArea_05.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app06-UserInput PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app06-UserInput
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app06-UserInput
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app06-UserInput
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
