@echo off
setlocal enabledelayedexpansion

REM Set source and target directories
@REM set "SRC=H:\archive\VOC2012\JPEGImages"
@REM set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\originals"
@REM set "LIST=figures\val_cams\ours\t.txt"


set "SRC=C:\Users\abesh\Downloads\Weclip results and imges\Weclip results and imges\weclip_test_pseudolabels\content\WeCLIP\all_cams\new"
set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\test_labels\weclip"
set "LIST=figures\test_cams\ours\t.txt"

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