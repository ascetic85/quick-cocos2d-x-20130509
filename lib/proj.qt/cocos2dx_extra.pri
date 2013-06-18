INCLUDEPATH += \
../cocos2dx_extra/extra

DEFINES += CC_LUA_ENGINE_ENABLED=1

SOURCES += \
../cocos2dx_extra//extra/crypto/CCCrypto.cpp \
../cocos2dx_extra//extra/crypto/sha1/sha1.cpp \
../cocos2dx_extra//extra/luabinding/cocos2dx_extra_luabinding.cpp \
../cocos2dx_extra//extra/network/CCHTTPRequest.cpp \
../cocos2dx_extra//extra/network/CCNetwork.cpp \
../cocos2dx_extra//extra/platform/win32/CCCryptoWin32.cpp \
../cocos2dx_extra//extra/platform/win32/CCNative.cpp \
../cocos2dx_extra//extra/platform/win32/CCNativeWin32.cpp \
../cocos2dx_extra//extra/platform/win32/CCNetworkWin32.cpp \
../cocos2dx_extra//extra/store/CCStorePaymentTransaction.cpp \
../cocos2dx_extra//extra/store/CCStoreProduct.cpp \
../cocos2dx_extra//extra/crypto/base64/libb64.c \
../cocos2dx_extra//extra/crypto/md5/md5.c \
../cocos2dx_extra//extra/crypto/xxtea/xxtea.c 

HEADERS += \
    ../cocos2dx_extra/extra/store/CCStorePaymentTransactionWrapper.h
