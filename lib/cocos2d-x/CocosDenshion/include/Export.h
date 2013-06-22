#ifndef __EXPORT_COMMON__
#define __EXPORT_COMMON__

#if defined(SHP)
    #include <FBaseConfig.h>
    #define EXPORT_DLL  _EXPORT_
//#elif defined(_WIN32)
//    #if defined(_EXPORT_DLL_)
//    #define EXPORT_DLL     __declspec(dllexport)
//    #elif defined(IGNORE_EXPORT)
//    #define EXPORT_DLL
//    #else         /* use a DLL library */
//    #define EXPORT_DLL     __declspec(dllimport)
//    #endif
#elif (CC_TARGET_PLATFORM == CC_PLATFORM_QT)
    #include <QtCore/qglobal.h>
    #undef EXPORT_DLL
    #if defined(_USRDLL)
    #ifdef Q_OS_WIN
        #define EXPORT_DLL     __declspec(dllexport)
    #else
        #define EXPORT_DLL     Q_DECL_EXPORT
    #endif
    #endif
#else
    #if defined(_SHARED_)
    #define EXPORT_DLL     __attribute__((visibility("default")))
    #elif defined(IGNORE_EXPORT)
    #define EXPORT_DLL
    #else
    #define EXPORT_DLL
    #endif
#endif 

#endif    // end of __EXPORT_COMMON__
