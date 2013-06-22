INCLUDEPATH += \
../lua_extensions \
../lua_extensions/cjson/ \
../lua_extensions/zlib/ \
../lua_extensions/socket/

SOURCES += \
../lua_extensions//cjson/fpconv.c \
../lua_extensions//cjson/lua_cjson.c \
../lua_extensions//cjson/strbuf.c \
../lua_extensions//lua_extensions.c \
../lua_extensions//socket/auxiliar.c \
../lua_extensions//socket/except.c \
../lua_extensions//socket/inet.c \
../lua_extensions//socket/luasocket.c \
../lua_extensions//socket/luasocket_buffer.c \
../lua_extensions//socket/luasocket_io.c \
../lua_extensions//socket/mime.c \
../lua_extensions//socket/options.c \
../lua_extensions//socket/select.c \
../lua_extensions//socket/socket_scripts.c \
../lua_extensions//socket/tcp.c \
../lua_extensions//socket/timeout.c \
../lua_extensions//socket/udp.c \
../lua_extensions//zlib/lua_zlib.c

!win32 {
    SOURCES += \
../lua_extensions//socket/unix.c \
../lua_extensions//socket/usocket.c \
../lua_extensions//socket/serial.c
}

win32 {
    SOURCES += ../lua_extensions//socket/wsocket.c
    LIBS += -lWs2_32
}
