QT       += core gui opengl

TARGET = HelloWorld
TEMPLATE = app

CONFIG(debug, debug|release) {
    DESTDIR = ../../Debug.qt
    DEFINES += COCOS2D_DEBUG=1
}

CONFIG(release, debug|release) {
    DESTDIR = ../../Release.qt
}

win32 {
    LIBS += -L$(DESTDIR) -llibcocos2d
}

unix {
    LIBS += -L$(DESTDIR) -lcocos2d
}

unix:macx {
    CONFIG -= app_bundle
}

#DEFINES += WIN32 _WINDOWS
DEFINES += _USRDLL
DEFINES += __QT__
DEFINES += CC_UNDER_QT
# for zip
DEFINES += USE_FILE32API

INCLUDEPATH += ../../lib/cocos2d-x/cocos2dx/platform \
        ../../lib/cocos2d-x/cocos2dx/include \
        ../../lib/cocos2d-x/cocos2dx \
        ../../lib/cocos2d-x/cocos2dx/platform/qt \
        ../../lib/cocos2d-x/cocos2dx/kazmath/include \
        ../Classes \
        ../../lib/cocos2d-x/extensions/ \
        ../../lib/lua_extensions/ \
        ../../lib/cocos2dx_extensions_luabinding/ \
        ../../lib/cocos2d-x/scripting/lua/cocos2dx_support \
        ../../lib/cocos2d-x/scripting/lua/tolua/    \
        ../../lib/cocos2dx_extra/extra/luabinding/

HEADERS += \
    ../Classes/HelloWorldScene.h \
    ../Classes/AppDelegate.h \
    mainwindow.h \
    ../../lib/cocos2d-x/cocos2dx/platform/qt/CCApplication.h \
    ../../lib/cocos2d-x/cocos2dx/platform/qt/CCGLWidget.h

SOURCES += \
    ../Classes/HelloWorldScene.cpp \
    ../Classes/AppDelegate.cpp \
    main.cpp \
    mainwindow.cpp

FORMS += \
    mainwindow.ui

