# Instructions to build The Hell 2 on Windows

## Prerequisites

- Visual Studio (tested with VS2019 Community)


## Steps to run

1) Install Windows XP build support, see the below answer for VS2019
https://stackoverflow.com/a/58061539

2) Run InitProject.bat

3) Edit personal.props file, to look like that one :

```xml
<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" ToolsVersion="4.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup Label="UserMacros">
    <GameFolder>C:\Diablo\th2-dev\</GameFolder>
    <FxCopDir>C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0s\x86</FxCopDir>
  </PropertyGroup>
  <PropertyGroup>
    <_ProjectFileVersion>10.0.21006.1</_ProjectFileVersion>
    <XPDeprecationWarning>false</XPDeprecationWarning>
  </PropertyGroup>
  <ItemGroup>
    <BuildMacro Include="GameFolder">
      <Value>$(GameFolder)</Value>
    </BuildMacro>
  </ItemGroup>
</Project>
```

In particular, change `GameFolder` to be the output directory of build, and select a directory that exists for `FxCopDir`

Make sure that `GameFolder` has a trailing `\` or the build will fail.

4) Import thehell2.vNext.vcxproj

5) Build it

If you get an error 'Failed to locate: "fxc.exe"', either install DirectX SDK (see below), or check the FxCopDir path. FxCopDir must contain this `fxc.exe` or it will not work.

https://www.microsoft.com/en-us/download/details.aspx?id=6812
  If installing this fails with error S1023, check out instructions below
  https://docs.microsoft.com/en-us/troubleshoot/windows/win32/s1023-error-when-you-install-directx-sdk

## Test the game

Copy config.ini, diabdat.mpq, TH2data.mor (and optionally THmusic.mor files) to your output build directory.

You can then run the game either directly through directory, or through the VS Studio debugger.
