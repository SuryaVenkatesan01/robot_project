*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    url=http:/facebook.com/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element   link=Create New Account
    Input Text    name=firstname    Surya
    Input Text   name=lastname    Venkatesan
    Input Text    id=password_step_input    20012001
    Input Text    name=reg_email__    suryavenkatesan6@gmail.com
    #20 Apr 2000
    Select From List By Label   id=day     20
    Select From List By Label   id=month    Apr
    Select From List By Label   id=year    2000
    Click Element    xpath://input[@value='-1']