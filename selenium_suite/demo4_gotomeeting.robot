*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go to   url=https://www.goto.com/meeting/
    Click Element    id=truste-consent-button
    Click Element   link=Try Free
    Input Text    id=first-name   John
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Input Text    id=CompanySize    10 - 99