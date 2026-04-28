@echo off
setlocal

echo ==========================================
echo This will uninstall: Reframework with RE9VR mod.
set /p "choice=Do you want to continue? (Y/N): "

if /i "%choice%" neq "Y" (
    echo Uninstall cancelled.
    pause
    exit /b
)

echo.
echo Deleting targeted files...

:: List of specific files to remove
del /f /q "actions.json"
del /f /q "bindings_knuckles.json"
del /f /q "bindings_oculus_touch.json"
del /f /q "DELETE_OPENVR_API_DLL_IF_YOU_WANT_TO_USE_OPENXR"
del /f /q "dinput8.dll"
del /f /q "modinfo.ini"
del /f /q "openvr_api.dll"
del /f /q "openxr_loader.dll"
del /f /q "PDAFWPlugin.dll"
del /f /q "RE9VR.png"
del /f /q "reframework_revision.txt"

:: Specifically remove the folder
if exist "reframework" (
    echo Removing reframework folder...
    rd /s /q "reframework"
)

echo.
echo Targeted uninstall complete!
pause