include(FetchContent)

FetchContent_Declare(directx-headers
        GIT_REPOSITORY "https://github.com/microsoft/DirectX-Headers.git"
        GIT_TAG "c0f2af8af649833910786f38eb79cc333c77b1a6" # v1.611.0
        GIT_SHALLOW TRUE
        OVERRIDE_FIND_PACKAGE
        SYSTEM
        EXCLUDE_FROM_ALL
)

set(DXHEADERS_INSTALL ON CACHE INTERNAL "" FORCE)
FetchContent_MakeAvailable(directx-headers)
