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

TC3
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://redbus.in



TC4 Javascript
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=http://phptravels.net/
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript  document.querySelector('#checkout').value='29-11-2023'
    Click Element    id=select2-hotels_city-container
    Input Text    class=select2-search__field    Vadod
    Click Element    xpath=//li[contains(text(),'Vadodara,In')]

TC5
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://nasscom.in
    ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
    Execute Javascript  arguments[0].click()    ARGUMENTS   ${ele}