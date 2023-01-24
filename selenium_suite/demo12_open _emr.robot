*** Settings ***
Library     SeleniumLibrary
#assignment
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
    Click Element   xpath=//div[text()='Patient']
    Click Element   xpath=//div[text()='New/Search']
    Select Frame   xpath=//iframe[@name='pat']
    Input Text   name=form_fname    Surya
    Click Element   name=form_lname
    Input Text   name=form_lname    Venkatesan
    Click Element   name=form_DOB
    Input Text    xpath=//input[@id='form_DOB']    24-01-2023
    Click Element    id=form_sex
    Click Element    xpath=//option[text()='Female']
    Click Element    name=create
    Unselect Frame
    Select Frame   xpath=//iframe[@id='modalframe']
    Click Element   xpath=//input[@value='Confirm Create New Patient']
    ${alert_text}  Handle Alert    action=ACCEPT    timeout=20s
    Log To Console    ${alert_text}
    Unselect Frame
    Click Element    class=closeDlgIframe
    Element Should Contain    xpath=//span[text()='Surya Venkatesan']    Surya Venkatesan
    Sleep    5s
    Close Browser

