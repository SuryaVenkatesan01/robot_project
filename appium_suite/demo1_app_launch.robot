*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=oneplus
    ...   app=C:${/}components${/}khan-academy-7-3-2.apk
    ${page_source}  Get Source
    Log To Console   ${page_source}
    sleep  4s
    Close Application

TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}components${/}khan-academy-7-3-2.apk
    Set Appium Timeout    30s
    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element   xpath=//*[@text='Sign in']
    Click Element   xpath=//*[@text='Sign in']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='Sign in']
    Click Element   xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element   xpath=//*[@text='Enter an e-mail address or username']
    Input Text   xpath=//*[@text='Enter an e-mail address or username']   surya@gmail.com
    Wait Until Page Contains Element   xpath=//*[@text='Password']
    Input Text   xpath=//*[@text='Password']  welcome123
    Wait Until Page Contains Element   xpath=(//*[@text='Sign in'])[2]
    Click Element   xpath=(//*[@text='Sign in'])[2]
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='There was an issue signing in']
    Element Text Should Be   xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
    ${page_source}  Get Source
    Log      ${page_source}
    Sleep    15s
    Close Application