*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1 Upload
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']   D:${/}OneDrive - LTTS${/}Documents${/}sample1.pdf
    Sleep    5s

TC2 CSS Selector
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=http:/facebook.com/
    Input Text    css=#email    jack
    Input Password   css=#pass  pass123
    Click Element    css=button[name='login']

