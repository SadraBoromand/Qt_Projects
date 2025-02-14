cmake_minimum_required(VERSION 3.16)

project(5-2-Signal_handler VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(app5-2-Signal_handler
    main.cpp
)

qt_add_qml_module(app5-2-Signal_handler
    URI 5-2-Signal_handler
    VERSION 1.0
    QML_FILES
        Main.qml
        Main2_Connection.qml
        Attached_signal_handler.qml
        Custom_Signal_5_7.qml
        Conneteting_a_signal_to_a_method_5_8.qml
        Connecting_a_signal_to_a_signal_5_9.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app5-2-Signal_handler PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app5-2-Signal_handler
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app5-2-Signal_handler
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app5-2-Signal_handler
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
