
#ifndef __LUA_EXTRA_H_
#define __LUA_EXTRA_H_

#if (CC_TARGET_PLATFORM == CC_PLATFORM_QT)
//    #define LUA_EXTENSIONS_DLL CC_DLL
    #include <QtCore/qglobal.h>
    #undef CC_DLL
    #if defined(_USRDLL)
#ifdef Q_OS_WIN
        #define LUA_EXTENSIONS_DLL     __declspec(dllexport)
#else
        #define LUA_EXTENSIONS_DLL     Q_DECL_EXPORT
#endif
    #else 		/* use a DLL library */
#ifdef Q_OS_WIN
        #define LUA_EXTENSIONS_DLL     __declspec(dllimport)
#else
        #define LUA_EXTENSIONS_DLL     Q_DECL_IMPORT
#endif
    #endif
#else
    #if defined(_USRDLL)
        #define LUA_EXTENSIONS_DLL     __declspec(dllexport)
    #else         /* use a DLL library */
        #define LUA_EXTENSIONS_DLL
    #endif
#endif
#if __cplusplus
extern "C" {
#endif

#include "lauxlib.h"

void LUA_EXTENSIONS_DLL luaopen_lua_extensions(lua_State *L);
    
#if __cplusplus
}
#endif

#endif /* __LUA_EXTRA_H_ */
