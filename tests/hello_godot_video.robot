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
    Record Video Default
    Run Godot Engine
    Expand Godot Engine
    Record Video Godot
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

Record Video Default
    Start Video Recording       name=default      monitor=0
    Sleep    5s
    Stop All Video Recordings

Record Video Godot
    Start Video Recording       name=godot      monitor=0
    Sleep    5s
    Stop All Video Recordings

