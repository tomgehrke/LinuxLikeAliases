@echo off
echo # Linux-like aliases loaded!
doskey alias=doskey /macros:all
doskey clear=cls
doskey mv=move $*
doskey cp=copy $*
doskey rm=del $*
doskey ls=dir /w $*
doskey ll=dir /q /n /c $*
doskey grep=findstr $*
doskey pwd=cd
doskey df=fsutil volume diskfree $*