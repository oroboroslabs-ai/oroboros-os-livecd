@echo off
REM OROBOROS OS V1.0 Live CD - ISO Rejoin Script for Windows
REM Run this after downloading all 5 parts

echo === OROBOROS OS V1.0 Live CD - Rejoining ISO ===

REM Check all parts exist
if not exist "OROBOROS-OS-V1.0-Live.part_aa" (
    echo ERROR: Missing OROBOROS-OS-V1.0-Live.part_aa
    goto :missing
)
if not exist "OROBOROS-OS-V1.0-Live.part_ab" (
    echo ERROR: Missing OROBOROS-OS-V1.0-Live.part_ab
    goto :missing
)
if not exist "OROBOROS-OS-V1.0-Live.part_ac" (
    echo ERROR: Missing OROBOROS-OS-V1.0-Live.part_ac
    goto :missing
)
if not exist "OROBOROS-OS-V1.0-Live.part_ad" (
    echo ERROR: Missing OROBOROS-OS-V1.0-Live.part_ad
    goto :missing
)
if not exist "OROBOROS-OS-V1.0-Live.part_ae" (
    echo ERROR: Missing OROBOROS-OS-V1.0-Live.part_ae
    goto :missing
)

echo Rejoining parts...
copy /b OROBOROS-OS-V1.0-Live.part_aa + OROBOROS-OS-V1.0-Live.part_ab + OROBOROS-OS-V1.0-Live.part_ac + OROBOROS-OS-V1.0-Live.part_ad + OROBOROS-OS-V1.0-Live.part_ae OROBOROS-OS-V1.0-Live.iso

echo.
echo SUCCESS: ISO created!
echo File: OROBOROS-OS-V1.0-Live.iso
echo.
echo To create bootable USB:
echo   Use Rufus or balenaEtcher (32+ GB USB recommended)
echo.
echo Download Rufus from: https://rufus.ie
echo Download balenaEtcher from: https://etcher.balena.io
goto :end

:missing
echo Please download all 5 parts before running this script.
exit /b 1

:end
echo Done.