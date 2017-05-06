message(STATUS "Using custom Find${CMAKE_FIND_PACKAGE_NAME} module")

# Originally from
# https://github.com/mhauskn/dqn/blob/master/cmake/Modules/FindCAFFE2.cmake
#
# The MIT License (MIT)
#
# Copyright (c) 2014 Yasuhiro Fujita
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# The following variables are optionally searched for defaults
#  CAFFE2_ROOT_DIR:            Base directory where all GLOG components are found
#
# The following are set after configuration is done:
#  CAFFE2_FOUND
#  CAFFE2_INCLUDE_DIRS
#  CAFFE2_LIBRARIES

include(FindPackageHandleStandardArgs)

set(CAFFE2_ROOT_DIR "" CACHE PATH "Folder containing CAFFE2")

set(CAFFE2_INCLUDE_DIR /usr/local/include/caffe2)
set(CAFFE2_PROTO_INCLUDE_DIR /usr/local/include/caffe2/proto)
set(CAFFE2_LIBRARY /usr/local/lib/libCaffe2_GPU.so /usr/local/lib/libCaffe2_CPU.so)

find_package_handle_standard_args(CAFFE2 DEFAULT_MSG
  CAFFE2_INCLUDE_DIR CAFFE2_PROTO_INCLUDE_DIR CAFFE2_LIBRARY)

if(CAFFE2_FOUND)
  set(CAFFE2_INCLUDE_DIRS ${CAFFE2_INCLUDE_DIR} ${CAFFE2_PROTO_INCLUDE_DIR})
  set(CAFFE2_LIBRARIES ${CAFFE2_LIBRARY})
endif()
