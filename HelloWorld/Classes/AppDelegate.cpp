#include "AppDelegate.h"
#include "HelloWorldScene.h"
#include "CCEGLView.h"

// Qt
#include <QLabel>
#include <QHBoxLayout>
#include <QGLWidget>

USING_NS_CC;

AppDelegate::AppDelegate(int argc, char *argv[])
    : CCApplication(argc, argv)
{
}

AppDelegate::~AppDelegate()
{
}

bool AppDelegate::applicationDidFinishLaunching() {
    // initialize director
    CCDirector* pDirector = CCDirector::sharedDirector();
    cocos2d::CCEGLView* eglView = cocos2d::CCEGLView::sharedOpenGLView();

    pDirector->setOpenGLView(eglView);

    // turn on display FPS
    pDirector->setDisplayStats(true);

    // set FPS. the default value is 1.0/60 if you don't call this
    pDirector->setAnimationInterval(1.0 / 60 );

    // create a scene. it's an autorelease object
    CCScene *pScene = HelloWorld::scene();

    // run
    pDirector->runWithScene(pScene);

    m_mainWindow.setCocosAppDelegate(this);
    m_mainWindow.setGLView(eglView->getGLWidget());
    m_mainWindow.show();
    eglView->getGLWidget()->raise();

    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground() {
    CCDirector::sharedDirector()->stopAnimation();

    // if you use SimpleAudioEngine, it must be pause
    // SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground() {
    CCDirector::sharedDirector()->startAnimation();

    // if you use SimpleAudioEngine, it must resume here
    // SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();
}
