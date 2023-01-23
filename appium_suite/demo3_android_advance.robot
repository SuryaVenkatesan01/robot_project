*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1 Swipe
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=oneplus
    ...   appPackage=org.khanacademy.android
    ...   appActivity=org.khanacademy.android.ui.library.MainActivity
    ...   noReset=true
    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element   xpath=//android.widget.Button[@text='Search']
    Click Element    xpath=//android.widget.Button[@text='Search']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element      xpath=//android.widget.TextView[@text='Arts and humanities']
    ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    75    95   25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element   xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']
    ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    75    95   25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END
    Wait Until Page Contains Element   xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']
    ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    WHILE    ${count}==0
        Swipe By Percent    90    75    95   25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    END
    Wait Until Page Contains Element   xpath=//*[@text='The Taj Mahal']
    Click Element    xpath=//*[@text='The Taj Mahal']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]
    #Element Should Contain Text    xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]    fifth ruler
    Page Should Contain Text    fifth ruler
    #Element Should Be Visible    xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]
    Sleep    10s
    [Teardown]  Close Application
