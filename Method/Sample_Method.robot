*** Settings ***
Library  SeleniumLibrary
Variables  ../Yaml files/Sample.yaml

*** Keywords ***

Google Fiddling.
    Go To  https://www.google.com/
    Sleep    3s
    Log To Console    Am in google page right now.
    Input Text    xpath=${Search_input}   Snowfall
    Log To Console    Typing Snowfall.
    Press Keys    xpath=${Search_Button}  ENTER