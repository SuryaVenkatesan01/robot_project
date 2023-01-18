*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element   xpath=//a[@title='Close']
    Click Element    xpath=//span[text()='Login']
    Switch Window   NEW
    #Switch Window   Citibank India
    Click Element    xpath=//div[contains(text(),'User ID? ')]
    Click Element    link=select your product type
    Click Element    link=Credit Card
    Input Text    id=citiCard1    4545 
    Input Text    id=citiCard2    5656
    Input Text    id=citiCard3    8887
    Input Text    id=citiCard4    9998   
    Input Text    name=CCVNO    456
    Click Element    name=DOB
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']   2001
    Select From List By Label    xpath=//select[@class='ui-datepicker-month']  Jan
    Click Element    link=20
    Click Element   xpath=//input[@value='PROCEED']
    Element Should Contain    xpath=//*[text()]    Please accept Terms and Conditions
    Close Window
