#include "CCApplication.h"
#include "CCEGLView.h"
#include "CCDirector.h"
#include <algorithm>
#include "platform/CCFileUtils.h"
/**
@brief    This function change the PVRFrame show/hide setting in register.
@param  bEnable If true show the PVRFrame window, otherwise hide.
*/
static void PVRFrameEnableControlWindow(bool bEnable);

NS_CC_BEGIN

// sharedApplication pointer
CCApplication * CCApplication::sm_pSharedApplication = 0;

CCApplication::CCApplication(int argc, char *argv[])
    : QApplication(argc, argv)
{
    m_nAnimationInterval = 0;
    CC_ASSERT(! sm_pSharedApplication);
    sm_pSharedApplication = this;
}

CCApplication::~CCApplication()
{
    CC_ASSERT(this == sm_pSharedApplication);
    sm_pSharedApplication = NULL;
}

int CCApplication::run()
{
    // Initialize instance and cocos2d.
    if (! applicationDidFinishLaunching())
    {
        return 0;
    }

    return cocos2d::CCApplication::sharedApplication()->exec();
}

void CCApplication::setAnimationInterval(double interval)
{
    m_nAnimationInterval = interval;
}

//////////////////////////////////////////////////////////////////////////
// static member function
//////////////////////////////////////////////////////////////////////////
CCApplication* CCApplication::sharedApplication()
{
    CC_ASSERT(sm_pSharedApplication);
    return sm_pSharedApplication;
}

ccLanguageType CCApplication::getCurrentLanguage()
{
    ccLanguageType ret = kLanguageEnglish;

    return ret;
}

TargetPlatform CCApplication::getTargetPlatform()
{
    return kTargetWindows;
}

void CCApplication::setStartupScriptFilename(const std::string& startupScriptFile)
{
    m_startupScriptFilename = startupScriptFile;
    int pos;
    while ((pos = m_startupScriptFilename.find_first_of("\\")) != std::string::npos)
    {
        m_startupScriptFilename.replace(pos, 1, "/");
    }
}

NS_CC_END

