*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go to  url=https://www.medibuddy.in/
    Click Element   link=Login
    Click Element    xpath=//div[contains(text(),'I have an Insurance')]
    Click Element    xpath=//div[contains(text(),'Login using')]
    Input Text    name=userName    john
    Click Element    xpath=//button[text()='Proceed']
    Input Password    name=password    john123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[text()='Log in']
    Element Should Contain    xpath=//*[text()]     If you forgot the password







