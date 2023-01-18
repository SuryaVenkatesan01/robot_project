*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId   test123
    Click Element    link=CONTINUE
    Unselect Frame
    Input Password    id=keyboard    12245

TC2
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://redbus.in
    Click Element    id=i-icon-profile
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    9384
    Element Should Contain    xpath=//span[contains(text(),'Please enter valid')]  Please enter valid mobile number
    Unselect Frame
    Close Browser