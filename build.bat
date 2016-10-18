cd src
cl /MD /O2 /c /DLUA_BUILD_AS_DLL *.c
ren lua.obj lua.o
ren luac.obj luac.o
link /DLL /IMPLIB:lua-5.3.3.lib /OUT:lua-5.3.3.dll *.obj 
link /OUT:lua.exe lua.o lua-5.3.3.lib 
lib /OUT:lua-5.3.3-static.lib *.obj
link /OUT:luac.exe luac.o lua-5.3.3-static.lib
cd ..
mkdir build
move src\luac.exe build\
move src\lua.exe build\
move src\lua-5.3.3.dll build\
move src\lua-5.3.3.lib build\
move src\lua-5.3.3-static.lib build\
