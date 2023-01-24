*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
TC1
    &{dic}      Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=suryav_FmhVP6
    ...     accessKey=fxa5jdVDXywZpEwwjFDx

    Open Application   remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://bfe082578278fd74af9d84205c5b0a30c28fa721
    ...     platformVersion=13
    ...     bstack:options=${dic}
    ${app_source}   Get Source
    Log    ${app_source}
    [Teardown]    Close Application
    
TC2
    &{dic}      Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=suryav_FmhVP6
    ...     accessKey=fxa5jdVDXywZpEwwjFDx

    Open Application   remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://bfe082578278fd74af9d84205c5b0a30c28fa721
    ...     platformVersion=13
    ...     bstack:options=${dic}
    
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Username']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name='test-Password']
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name='test-Password']    secret_sauce
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    #Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    #Click Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-Cart']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-Cart']
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-First Name']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-First Name']    john
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Last Name']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Last Name']    jo
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']    100022
    Hide Keyboard
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name='Payment Information:']     Payment Information:
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name='Shipping Information:']    Shipping Information:
    Sleep    5s
    [Teardown]    Close Application
