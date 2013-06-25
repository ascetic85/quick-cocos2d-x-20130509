#-------------------------------------------------
#
# Project created by QtCreator 2013-06-10T10:49:00
#
#-------------------------------------------------

QT       += core gui opengl

TEMPLATE = lib

COCOSMODULES += lua cocosdenshion extensions

include(libcocos2d.pri)

win32 {
    TARGET = libcocos2d
}

unix {
    TARGET = cocos2d
}

CONFIG(debug, debug|release) {
    DEFINES += COCOS2D_DEBUG=1
    OBJECTS_DIR = debug/
    DESTDIR = ../../Debug.qt
}

CONFIG(release, debug|release) {
    OBJECTS_DIR = release/
    DESTDIR = ../../Release.qt
    DEFINES += TOLUA_RELEASE
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
    $$PWD../cocos2d-x/cocos2dx/CCConfiguration.h

SOURCES += \
    ../cocos2d-x/cocos2dx/cocos2d.cpp \
    ../cocos2d-x/cocos2dx/CCScheduler.cpp \
    ../cocos2d-x/cocos2dx/CCDirector.cpp \
    ../cocos2d-x/cocos2dx/CCConfiguration.cpp \
    ../cocos2d-x/cocos2dx/CCCamera.cpp

