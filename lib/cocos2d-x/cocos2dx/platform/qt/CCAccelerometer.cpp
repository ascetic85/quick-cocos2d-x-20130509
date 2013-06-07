/****************************************************************************
 Copyright (c) 2011      cocos2d-x.org   http://cocos2d-x.org
 Copyright (c) 2012      Rocco Loscalzo (Wartortle)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 ****************************************************************************/

#include "CCAccelerometer.h"
#include "CCEGLView.h"
#include "CCDirector.h"
#include "ccMacros.h"

namespace
{

    double            g_accelX=0.0;
    double            g_accelY=0.0;
    double            g_accelZ=0.0;
    const double    g_accelerationStep=0.2f;
    const double    g_minAcceleration=-1.0f;
    const double    g_maxAcceleration=1.0f;


    void resetAccelerometer()
    {
        g_accelX=0.0;
        g_accelY=0.0;
        g_accelZ=0.0;
    }

}

NS_CC_BEGIN

CCAccelerometer::CCAccelerometer() : 
    m_pAccelDelegate(NULL)
{
    memset(&m_obAccelerationValue, 0, sizeof(m_obAccelerationValue));
}

CCAccelerometer::~CCAccelerometer() 
{

}

void CCAccelerometer::setDelegate(CCAccelerometerDelegate* pDelegate) 
{
    m_pAccelDelegate = pDelegate;
}

void CCAccelerometer::setAccelerometerInterval(float interval)
{

}

void CCAccelerometer::update( double x,double y,double z,double timestamp ) 
{
    if (m_pAccelDelegate)
    {
        m_obAccelerationValue.x            = x;
        m_obAccelerationValue.y            = y;
        m_obAccelerationValue.z            = z;
        m_obAccelerationValue.timestamp = timestamp;

        // Delegate
        m_pAccelDelegate->didAccelerate(&m_obAccelerationValue);
    }    
}

NS_CC_END

