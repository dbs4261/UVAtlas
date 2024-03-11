include_guard()

include(FetchContent)

FetchContent_Declare(directxmath
        GIT_REPOSITORY "https://github.com/microsoft/DirectXMath.git"
        GIT_TAG "2160408dfdb83b631ea062a192b3c0d479864150" # dec2023
        GIT_SHALLOW TRUE
        OVERRIDE_FIND_PACKAGE
        SYSTEM
        EXCLUDE_FROM_ALL
)

FetchContent_MakeAvailable(directxmath)
add_library(Microsoft::DirectXMath ALIAS DirectXMath)

FetchContent_Declare(sal
    SOURCE_DIR ${directxmath_SOURCE_DIR}/Inc/
    BUILD_DIR ""
    URL "https://raw.githubusercontent.com/dotnet/corert/master/src/Native/inc/unix/sal.h"
    URL_HASH SHA512=1643571673195d9eb892d2f2ac76eac7113ef7aa0ca116d79f3e4d3dc9df8a31600a9668b7e7678dfbe5a76906f9e0734ef8d6db0903ccc68fc742dd8238d8b0
    DOWNLOAD_NO_EXTRACT TRUE
    CONFIGURE_COMMAND ""
)
FetchContent_Populate(sal)