*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=oneplus
    ...   appPackage=org.khanacademy.android
    ...   appActivity=org.khanacademy.android.ui.library.MainActivity
    ...   noReset=true
    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element  android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")
    Wait Until Page Contains Element  android=UiSelector().description("Settings")
    Click Element    android=UiSelector().description("Settings")
    Wait Until Page Contains Element   android=UiSelector().textContains("Sign i")
    Click Element      android=UiSelector().textContains("Sign i")
    Wait Until Page Contains Element  android=UiSelector().textContains("Sign up with")
    Click Element    android=UiSelector().textContains("Sign up with")
    Wait Until Page Contains Element    android=UiSelector().text("First name")
    Input Text    android=UiSelector().text("First name")  Surya
    Wait Until Page Contains Element    android=UiSelector().text("Last name")
    Input Text    android=UiSelector().text("Last name")   Venkatesan
    Wait Until Page Contains Element  android=UiSelector().text("Birthday")
    Click Element  android=UiSelector().text("Birthday")
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)  Jan
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)  20
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)  2001
    Close Application

TC2 Swipe UiSelector
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
    &{dic_arg}      Create Dictionary      strategy=-android uiautomator
    ...   selector=UiSelector().text("Art of Asia")
    Execute Script    mobile: scroll    &{dic_arg}
    Click Element       android=UiSelector().text("Art of Asia")
    &{dic_arg}      Create Dictionary      strategy=-android uiautomator
    ...   selector=UiSelector().text("South Asia")
    Execute Script    mobile: scroll    &{dic_arg}
    Click Element    android=UiSelector().text("South Asia")
    Sleep    10s
    [Teardown]  Close Application