QT       += core gui opengl

TARGET = HelloWorld
TEMPLATE = app

COCOSMODULES += lua cocosdenshion extensions
include(../../lib/proj.qt/libcocos2d-header.pri)

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

INCLUDEPATH += \
        ../Classes \
        .

HEADERS += \
    ../Classes/HelloWorldScene.h \
    ../Classes/AppDelegate.h \
    mainwindow.h


SOURCES += \
    ../Classes/HelloWorldScene.cpp \
    ../Classes/AppDelegate.cpp \
    main.cpp \
    mainwindow.cpp

FORMS += \
    mainwindow.ui

