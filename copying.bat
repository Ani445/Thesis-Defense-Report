@echo off
setlocal enabledelayedexpansion

REM Set source and target directories
@REM set "SRC=H:\archive\VOC2012\JPEGImages"
@REM set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\originals"
@REM set "LIST=figures\val_cams\ours\t.txt"


set "SRC=H:\archive\VOC2012\SegmentationClassAug"
set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\gts"
set "LIST=t.txt"

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