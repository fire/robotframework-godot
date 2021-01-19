*** Settings ***
Documentation     Hello Godot Demo
Test Setup        Add Needed Image Path
Library           Process
Library           SikuliLibrary
Library           ScreenCapLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\..\\data\\hello_godot
${GODOT_BINARY}       ${CURDIR}\\..\\data\\Godot_v3.2.3-stable_win64.exe

*** Test Cases ***
Windows Godot Hello World
    Run Godot Engine
    Expand Godot Engine
    Record Godot Video
    Quit

*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Run Godot Engine
    Start Process       ${GODOT_BINARY}

Expand Godot Engine
    Double Click    godot_title.png

Quit
    Click    close.png

Record Godot Video
    Start Video Recording       monitor=0
    Sleep    0.5s
    Stop All Video Recordings

