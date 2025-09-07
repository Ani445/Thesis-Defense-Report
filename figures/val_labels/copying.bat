@echo off
setlocal enabledelayedexpansion

REM Set source and target directories
set "SRC=C:\Users\abesh\Downloads\Weclip results and imges\Weclip results and imges\weclip_val_pseudolabels\content\WeCLIP\all_cams\new"
set "DST=F:\UNI_STUFF\Thesis\Thesis-Defense-Report\figures\val_labels\weclip"
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