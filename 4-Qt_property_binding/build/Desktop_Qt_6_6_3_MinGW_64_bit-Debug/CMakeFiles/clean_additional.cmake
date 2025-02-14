# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\app4-Qt_property_binding_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\app4-Qt_property_binding_autogen.dir\\ParseCache.txt"
  "app4-Qt_property_binding_autogen"
  )
endif()
