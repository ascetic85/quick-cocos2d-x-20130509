#include "SimpleAudioEngine.h"

namespace CocosDenshion {

static float effectVol = 1.0f;
static float musicVol = 1.0f;
static float masterVol = 0.7f;

SimpleAudioEngine::SimpleAudioEngine()
{
}

SimpleAudioEngine::~SimpleAudioEngine()
{
}

SimpleAudioEngine* SimpleAudioEngine::sharedEngine()
{
    static SimpleAudioEngine s_SharedEngine;
    return &s_SharedEngine;
}

void SimpleAudioEngine::end()
{
}

//////////////////////////////////////////////////////////////////////////
// BackgroundMusic
//////////////////////////////////////////////////////////////////////////

void SimpleAudioEngine::playBackgroundMusic(const char* pszFilePath,
        bool bLoop)
{
}

void SimpleAudioEngine::stopBackgroundMusic(bool bReleaseData)
{

}

void SimpleAudioEngine::pauseBackgroundMusic()
{
}

void SimpleAudioEngine::resumeBackgroundMusic()
{

}

void SimpleAudioEngine::rewindBackgroundMusic()
{

}

bool SimpleAudioEngine::willPlayBackgroundMusic()
{
    return false;
}

bool SimpleAudioEngine::isBackgroundMusicPlaying()
{
    return false;
}

void SimpleAudioEngine::preloadBackgroundMusic(const char* pszFilePath)
{

}

//////////////////////////////////////////////////////////////////////////
// effect function
//////////////////////////////////////////////////////////////////////////

unsigned int SimpleAudioEngine::playEffect(const char* pszFilePath,
        bool bLoop)
{
    return 1;
}

void SimpleAudioEngine::stopEffect(unsigned int nSoundId)
{

}

void SimpleAudioEngine::preloadEffect(const char* pszFilePath)
{

}

void SimpleAudioEngine::unloadEffect(const char* pszFilePath)
{

}

void SimpleAudioEngine::pauseEffect(unsigned int uSoundId)
{

}

void SimpleAudioEngine::pauseAllEffects()
{

}

void SimpleAudioEngine::resumeEffect(unsigned int uSoundId)
{

}

void SimpleAudioEngine::resumeAllEffects()
{

}

void SimpleAudioEngine::stopAllEffects()
{

}



//////////////////////////////////////////////////////////////////////////
// volume interface
//////////////////////////////////////////////////////////////////////////

float SimpleAudioEngine::getBackgroundMusicVolume()
{
    return musicVol;
}

void SimpleAudioEngine::setBackgroundMusicVolume(float volume)
{
    if (volume < 0.0f)
        volume = 0.0f;
    if (volume > 1.0f)
        volume = 1.0f;
    musicVol = volume;

}

float SimpleAudioEngine::getEffectsVolume()
{
    return effectVol;
}

void SimpleAudioEngine::setEffectsVolume(float volume)
{


    if (volume < 0.0f)
        volume = 0.0f;
    if (volume > 1.0f)
        volume = 1.0f;
    effectVol = volume;


}

} // end of namespace CocosDenshion
