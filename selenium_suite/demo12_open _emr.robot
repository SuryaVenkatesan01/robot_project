*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Click Element    class=form-control
    Select From List By Label       xpath=//select[@class='form-control']   English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Patient']