#-------------------------------------------------
#
# Project created by QtCreator 2013-06-10T10:49:00
#
#-------------------------------------------------

QT       += core gui opengl

TEMPLATE = lib

include(actions.pri)
include(base_nodes.pri)
include(cocoa.pri)
include(draw_nodes.pri)
include(effects.pri)
include(kazmath.pri)
include(keypad_dispatcher.pri)
include(label_nodes.pri)
include(layers_scenes_transitions_nodes.pri)
include(menu_nodes.pri)
include(misc_nodes.pri)
include(particle_nodes.pri)
include(platform.pri)
include(script_support.pri)
include(shaders.pri)
include(sprite_nodes.pri)
include(support.pri)
include(text_input_node.pri)
include(textures.pri)
include(tileMap_parallax_nodes.pri)
include(touch_dispatcher.pri)

include(extensions.pri)

win32 {
    TARGET = libcocos2d

    # You may need to change this include directory
    DEFINES += WIN32
#    DEFINES += _WINDOWS
    INCLUDEPATH += \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/iconv \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/zlib \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/libjpeg \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/libpng \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/pthread \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/libtiff \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/libxml2 \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/libwebp    \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/OGLES    \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/    \
            ../cocos2d-x/cocos2dx/platform/third_party/win32/OGLES/GL



#    LIBS += -lglew32
    LIBS += -lopengl32 -ladvapi32 -lShell32
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibxml2
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibpng
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibzlib
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibjpeg
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibiconv
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -lpthreadVCE2
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibtiff
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibwebp
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -llibcurl_imp
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/win32/libraries -lglew32

    QMAKE_LFLAGS_DEBUG  = /DEBUG /NODEFAULTLIB:libcmt.lib
}

unix {
    TARGET = cocos2d

    INCLUDEPATH += /usr/local/include \
            /usr/include/libxml2 \
            ../cocos2d-x/cocos2dx

    LIBS += -L/usr/local/lib/ -lpng
    LIBS += -L/usr/local/lib/ -ljpeg
    LIBS += -L/usr/local/lib/ -lxml2
    LIBS += -L/usr/local/lib/ -lGLEW
    LIBS += -L/usr/local/lib/ -lz
    LIBS += -L/usr/local/lib/ -lcurl
#    LIBS += -L/usr/local/lib/ -lsqlite3
}

unix:macx {
    INCLUDEPATH += \
            ../cocos2d-x/cocos2dx/platform/third_party/mac/webp
    LIBS += -L../cocos2d-x/cocos2dx/platform/third_party/mac/libraries -lwebp
    LIBS += -L/usr/local/lib/ -ltiff
}

DEFINES += _USRDLL
DEFINES += __QT__
DEFINES += CC_UNDER_QT
INCLUDEPATH += ../cocos2d-x/cocos2dx/platform \
        ../cocos2d-x/cocos2dx/platform/qt \
        ../cocos2d-x/cocos2dx/cocoa \
        ../cocos2d-x/cocos2dx/include \
        ../cocos2d-x/cocos2dx   \
        ../cocos2d-x/extensions

CONFIG(debug, debug|release) {
    DEFINES += COCOS2D_DEBUG=1
    OBJECTS_DIR = debug/
    DESTDIR = ../../Debug.qt
}

CONFIG(release, debug|release) {
    OBJECTS_DIR = release/
    DESTDIR = ../../Release.qt
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

HEADERS += \
    ../cocos2d-x/cocos2dx/CCConfiguration.h

SOURCES += \
    ../cocos2d-x/cocos2dx/cocos2d.cpp \
    ../cocos2d-x/cocos2dx/CCScheduler.cpp \
    ../cocos2d-x/cocos2dx/CCDirector.cpp \
    ../cocos2d-x/cocos2dx/CCConfiguration.cpp \
    ../cocos2d-x/cocos2dx/CCCamera.cpp
