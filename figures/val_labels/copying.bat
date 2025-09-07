@echo off
setlocal enabledelayedexpansion

REM Set source and target directories
set "SRC=H:\archive\VOC2012\JPEGImages"
set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\originals"
set "LIST=figures\val_cams\ours\t.txt"

REM Make sure the target directory exists
if not exist "%DST%" mkdir "%DST%"

for /f "usebackq delims=" %%A in ("%LIST%") do (
    for %%F in ("%SRC%\%%A*") do (
        if exist "%%F" (
            echo Copying %%F to %DST%
            copy "%%F" "%DST%"
        )
    )
)

echo Done.
pause