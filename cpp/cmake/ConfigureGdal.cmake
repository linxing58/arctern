<<<<<<< HEAD
#set(GDAL_SOURCE_URL
#    "https://github.com/OSGeo/gdal/releases/download/v3.0.2/gdal-3.0.2.tar.gz")
#
#set(GDAL_ROOT       ${CMAKE_BINARY_DIR}/gdal_ep-prefix/src/)
#
#ExternalProject_Add(gdal_ep
#    URL
#    ${GDAL_SOURCE_URL}
#    URL_MD5
#    8a31507806b26f070858558aaad42277
#    CONFIGURE_COMMAND
#    ./configure
#    CPPFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0
#    --prefix=${CMAKE_BINARY_DIR}/thirdparty
#    --with-proj=${CMAKE_BINARY_DIR}/thirdparty
#    --without-libtool
#    --with-zstd=no
#    --with-cryptopp=no
#    --with-expat=no
#    --with-crypto=no
#    BUILD_COMMAND
#    make -j8
#    INSTALL_COMMAND
#    make install
#    BUILD_IN_SOURCE
#    1
#)

=======
>>>>>>> f395151f99a27e82918bd1e34a7b405f239481c7
set(GDAL_SOURCE_URL
        "https://github.com/OSGeo/gdal.git")
set(GDAL_ROOT       ${CMAKE_BINARY_DIR}/gdal_ep-prefix/src/)

set(GDAL_CMAKE_ARGS        "-DCMAKE_PREFIX_PATH=${CMAKE_BINARY_DIR}/thirdparty"
        "-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/thirdparty"
        "-DCMAKE_CXX_FLAGS=-D_GLIBCXX_USE_CXX11_ABI=0"
        "-DCMAKE_BUILD_TYPE=Release")

ExternalProject_Add(gdal_ep
        GIT_REPOSITORY          ${GDAL_SOURCE_URL}
        GIT_TAG                 master
        CMAKE_ARGS              ${GDAL_CMAKE_ARGS}
        BINARY_DIR
        ${GDAL_ROOT}/gdal_ep/gdal
        CONFIGURE_COMMAND
        ./configure
        CPPFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0
        --prefix=${CMAKE_BINARY_DIR}/thirdparty
        --with-proj=${CMAKE_BINARY_DIR}/thirdparty
        --without-libtool
        --with-zstd=no
        --with-cryptopp=no
        --with-expat=no
        --with-crypto=no
        BUILD_COMMAND
        make -j8
        INSTALL_COMMAND
        make install
<<<<<<< HEAD
#        BUILD_IN_SOURCE
#        1
=======
>>>>>>> f395151f99a27e82918bd1e34a7b405f239481c7
        )

add_dependencies(gdal_ep proj_ep)