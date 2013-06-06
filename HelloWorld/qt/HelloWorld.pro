QT       += core gui

TARGET = HelloWorld
TEMPLATE = app

CONFIG(debug, debug|release) {
    DESTDIR = ../../Debug.qt
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

DEFINES += WIN32 _WINDOWS
#DEFINES += CC_UNDER_QT

INCLUDEPATH += ../../lib/cocos2d-x/cocos2dx/platform \
        ../../lib/cocos2d-x/cocos2dx/include \
        ../../lib/cocos2d-x/cocos2dx \
        ../../lib/cocos2d-x/cocos2dx/platform/qt \
        ../../lib/cocos2d-x/cocos2dx/kazmath/include \
        ../Classes

HEADERS += \
    ../Classes/HelloWorldScene.h \
    ../Classes/AppDelegate.h
SOURCES += \
    ../Classes/HelloWorldScene.cpp \
    ../Classes/AppDelegate.cpp \
    main.cpp

