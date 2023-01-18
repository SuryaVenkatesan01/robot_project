*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go to   url=https://www.db4free.net/
    Click Element   partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    John
    Input Text    id=input_password    john123
    Click Element    id=input_go
    Switch Window   db4free.net - MySQL Database for free
    Close Window

