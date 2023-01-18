*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url=http://www.google.com/  browser=chrome
    ${actual_title}   Get Title
    Log To Console   ${actual_title}
    Log    ${actual_title}
    Should Be Equal     ${actual_title}    Google
    
TC2
    Open Browser    url=http://www.google.com/  browser=chrome
    Title Should Be    Google

TC3
    Open Browser    url=http://www.facebook.com/  browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id:pass    welcome123
    #click on login

TC4
    Open Browser    url=http://www.facebook.com/   browser=chrome
    Input Text    id:email    hello@gmail.com
    Input Password    id=pass    welcome123
    Click Element     name:login

TC5
    Open Browser    https://www.db4free.net/phpMyAdmin/      browser=chrome
    Input Text    id=input_username    admin
    Input Password      id=input_password    welcome123
    Click Element    id=input_go

