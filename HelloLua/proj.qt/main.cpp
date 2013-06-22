#if 1
#include "AppDelegate.h"
#include "cocos2d.h"
#include <stdio.h>

int main(int argc, char *argv[])
{
    // create the application instance
    AppDelegate app(argc, argv);

    cocos2d::CCEGLView* eglView = cocos2d::CCEGLView::sharedOpenGLView();
    eglView->setFrameSize(480, 320);

    return cocos2d::CCApplication::sharedApplication()->run();
}
#else

#include <QApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    return app.exec();
}

#endif
