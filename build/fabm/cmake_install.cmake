# Install script for directory: e:/Users/EYA/GMD/Sleipner_final/fabm-git/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/brom-transport")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/aed/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/hzg/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/iow/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/klimacampus/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/metu/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/msi/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/au/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/bb/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/examples/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/gotm/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/pclake/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/pml/cmake_install.cmake")
  include("e:/Users/EYA/GMD/Sleipner_final/brom/build/fabm/models/niva/cmake_install.cmake")

endif()

