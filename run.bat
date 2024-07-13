@echo off
REM Check if the parameter is provided
if "%1"=="" (
    echo Error: No parameter provided.
    echo Usage: run.bat [build|deploy]
    exit /b 1
)

REM Run applySpotless
echo Running gradlew.bat spotlessApply...
call gradlew.bat spotlessApply

REM Check the provided parameter and run the corresponding command
if "%1"=="build" (
    echo Running gradlew.bat build...
    call gradlew.bat build
) else if "%1"=="deploy" (
    echo Running gradlew.bat deploy...
    call gradlew.bat deploy
) else (
    echo Error: Invalid parameter "%1" provided.
    echo Usage: run.bat [build|deploy]
    exit /b 1
)
