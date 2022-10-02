# Linux-Like Alias

As a long-time Windows user who has spent the past few years deep in the Linux world, my fingers' muscle-memory is all kinds of messed up. I threw this together to sort of bridge the gap between what I know and what my fingers want to type.

## Installation

If you are a git user, just clone this repository into your %USERPROFILE% directory.

If you are not a git user, download the repository as a ZIP file and extract it into your %USERPROFILE% directory.

In either case, the end result should be that the files in this repository end up in a directory that looks something like this:

```cmd
C:\Users\myusername\llalias
```

At this point you can run the setup batch file:

```cmd
%USERPROFILE%\llalias\setup-llalias.bat
```

## Uninstall

If you've had enough of this and want out, run the uninstall batch file:

```cmd
%USERPROFILE%\llalias\uninstall-llalias.bat
```

Then delete the llalias folder to remove all traces.

## Usage

After installing and opening a new command prompt, if all went well you should see something like this:

```cmd
Microsoft Windows [Version 10.0.22000.1042]
(c) Microsoft Corporation. All rights reserved.
# Linux-like aliases loaded!

C:\Users\myusername>
```

At which point, you are good to go.

## Supported commands

Unfortunately there is not always a one-to-one match between a Linux command and a Windows command. I've tried to get close, but sometimes close isn't good enough. Your milage may vary.

To see a list of all the command mappings and a reference of the Windows command being used, just execute the `alias` command. (See? We're already using it!)

```cmd
Microsoft Windows [Version 10.0.22000.1042]
(c) Microsoft Corporation. All rights reserved.
# Linux-like aliases loaded!

C:\Users\myusername>alias
[cmd.exe]
    alias=doskey /macros:all
    clear=cls
    cp=copy $*
    mv=move $*
    ls=dir /w $*
    rm=del $*
    grep=findstr $*
    ll=dir /q /n /c $*
    pwd=cd
    df=fsutil volume diskfree $*


C:\Users\myusername>
```

If you use this and have changes or additions, please feel free to submit pull requests or message me with instructions to incorporate.

Long live the CLI!
