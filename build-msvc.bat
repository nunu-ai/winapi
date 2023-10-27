set LUA_DIR=C:\Program Files (x86)\Lua\Lua Library
set CFLAGS= /O1 /DPSAPI_VERSION=1  /I"%LUA_DIR%\include"
cl /nologo -c %CFLAGS% winapi.c
cl /nologo -c %CFLAGS% wutils.c
link /nologo winapi.obj wutils.obj /EXPORT:luaopen_winapi  /LIBPATH:"%LUA_DIR%" msvcrt.lib kernel32.lib user32.lib psapi.lib advapi32.lib shell32.lib  Mpr.lib lua54.lib  /DLL /OUT:winapi.dll
