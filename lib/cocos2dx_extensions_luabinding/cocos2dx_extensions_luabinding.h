
#ifndef __COCOS2DX_EXTENSIONS_LUABINDING_H_
#define __COCOS2DX_EXTENSIONS_LUABINDING_H_

#if (CC_TARGET_PLATFORM == CC_PLATFORM_QT)
    #include <QtCore/qglobal.h>
    #undef TOLUA_API
    #if defined(_USRDLL)
        #define TOLUA_API     Q_DECL_EXPORT
    #else 		/* use a DLL library */
        #define TOLUA_API     Q_DECL_IMPORT
    #endif
#endif

extern "C" {
#include "lua.h"
#include "tolua++.h"
#include "tolua_fix.h"
}

TOLUA_API int luaopen_cocos2dx_extensions_luabinding(lua_State* tolua_S);

#endif // __COCOS2DX_EXTENSIONS_LUABINDING_H_
