#ifndef __CC_APPLICATION_WIN32_H__
#define __CC_APPLICATION_WIN32_H__

#include "CCStdC.h"
#include "platform/CCCommon.h"
#include "platform/CCApplicationProtocol.h"
#include <string>

#undef CursorShape
#include <QtGui/QApplication>

NS_CC_BEGIN

class CCRect;

class CC_DLL CCApplication : public QApplication, public CCApplicationProtocol
{
public:
    CCApplication(int argc, char *argv[]);
    virtual ~CCApplication();

    /**
    @brief    Run the message loop.
    */
    int run();

    /**
    @brief    Get current applicaiton instance.
    @return Current application instance pointer.
    */
    static CCApplication* sharedApplication();

    /* override functions */
    virtual void setAnimationInterval(double interval);
    virtual ccLanguageType getCurrentLanguage();
    
    /**
     @brief Get target platform
     */
    virtual TargetPlatform getTargetPlatform();

    const std::string& getStartupScriptFilename(void) {
        return m_startupScriptFilename;
    }
    void setStartupScriptFilename(const std::string& startupScriptFile);

protected:
    long long           m_nAnimationInterval;
    std::string         m_startupScriptFilename;

    static CCApplication * sm_pSharedApplication;
};

NS_CC_END

#endif    // __CC_APPLICATION_WIN32_H__
