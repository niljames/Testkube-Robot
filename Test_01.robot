*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open Chrome
    [Tags]  test
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size  1024  768
    Go To  https://www.google.com/
    Sleep    3s
    Log To Console    Am in google page right now.
    Input Text    xpath=//textarea[contains(@class,'gLFyf')]    Snowfall
    Log To Console    Typing Snowfall.
    Press Keys    xpath=//div[contains(@class,'CcAdNb')]  ENTER