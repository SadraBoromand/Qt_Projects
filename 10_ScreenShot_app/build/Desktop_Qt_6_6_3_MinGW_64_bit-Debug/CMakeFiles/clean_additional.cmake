# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "10_ScreenShot_app_autogen"
  "CMakeFiles\\10_ScreenShot_app_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\10_ScreenShot_app_autogen.dir\\ParseCache.txt"
  )
endif()
