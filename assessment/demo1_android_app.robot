*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=oneplus
    ...   appPackage=com.udemy.android
    ...   appActivity=com.udemy.android.CombinedDeepLinkActivity
    ...   noReset=true
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Sign In']
    Click Element    xpath=//android.widget.Button[@text='Sign In']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Create an account']
    Click Element    xpath=//android.widget.Button[@text='Create an account']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Name']
    Input Text    xpath=//android.widget.EditText[@text='Name']    Surya
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Email']
    Input Text    xpath=//android.widget.EditText[@text='Email']    suryavenkatesan6@gmail.com
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Password (8+ characters)']
    Input Password    xpath=//android.widget.EditText[@text='Password (8+ characters)']    surya2001
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Create account']
    Click Element    xpath=//android.widget.Button[@text='Create account']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Skip']
    Click Element    xpath=//android.widget.Button[@text='Skip']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Top courses in Personal Development']
    Click Element    xpath=//android.widget.TextView[@text='Top courses in Personal Development']


    




