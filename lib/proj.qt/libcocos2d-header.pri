QUICK_SOURCE_TREE = $$PWD/../..

# cocos2d-x source directory
C2DX_DIR = $$QUICK_SOURCE_TREE/lib/cocos2d-x

QT       += core gui opengl

DEFINES += _USRDLL
DEFINES += __QT__
DEFINES += CC_UNDER_QT

contains(COCOSMODULES, lua) {
    DEFINES += CC_LUA_ENGINE_ENABLED=1
}

# for zip
DEFINES += USE_FILE32API

win32 {
    # You may need to change this include directory
    DEFINES += WIN32
    # for lua socket
    DEFINES += _WIN32
#    DEFINES += _WINDOWS
    INCLUDEPATH += \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/iconv \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/zlib \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libjpeg \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libpng \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/pthread \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libtiff \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libxml2 \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libwebp    \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/OGLES    \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/    \
            $$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/OGLES/GL


    LIBS += -lopengl32 -ladvapi32 -lShell32
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibxml2
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibpng
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibzlib
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibjpeg
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibiconv
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -lpthreadVCE2
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibtiff
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibwebp
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibcurl_imp
    LIBS += -L$$C2DX_DIR/../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -lglew32

    QMAKE_LFLAGS_DEBUG  = /DEBUG /NODEFAULTLIB:libcmt.lib
}

unix {
    INCLUDEPATH += /usr/local/include \
            /usr/include/libxml2

    LIBS += -L/usr/local/lib/ -lpng
    LIBS += -L/usr/local/lib/ -ljpeg
    LIBS += -L/usr/local/lib/ -lxml2
    LIBS += -L/usr/local/lib/ -lGLEW
    LIBS += -L/usr/local/lib/ -lz
    LIBS += -L/usr/local/lib/ -lcurl
}


unix:macx {
    INCLUDEPATH += \
            $$C2DX_DIR/cocos2dx/platform/third_party/mac/webp
    LIBS += -L$$C2DX_DIR/cocos2dx/platform/third_party/mac/libraries -lwebp
    LIBS += -L/usr/local/lib/ -ltiff
}

C2DX_INCLUDEPATH = \
        $$C2DX_DIR/cocos2dx/platform \
        $$C2DX_DIR/cocos2dx/include \
        $$C2DX_DIR/cocos2dx/cocoa \
        $$C2DX_DIR/cocos2dx \
        $$C2DX_DIR/cocos2dx/platform/qt \
        $$C2DX_DIR/cocos2dx/kazmath/include \
        $$C2DX_DIR/extensions/ \
        $$C2DX_DIR/scripting/lua/cocos2dx_support \
        $$C2DX_DIR/scripting/lua/lua    \
        $$C2DX_DIR/scripting/lua/tolua

C2DX_EXT_INCLUDEPATH = \
        $$QUICK_SOURCE_TREE/lib/lua_extensions/ \
        $$QUICK_SOURCE_TREE/lib/cocos2dx_extensions_luabinding/ \
        $$QUICK_SOURCE_TREE/lib/cocos2dx_extra/extra/luabinding

INCLUDEPATH += $$C2DX_INCLUDEPATH
INCLUDEPATH += $$C2DX_EXT_INCLUDEPATH

HEADERS += \
        $$C2DX_DIR/cocos2dx/platform/qt/CCApplication.h \
        $$C2DX_DIR/cocos2dx/platform/qt/CCGLWidget.h
