*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String
*** Comments ***
*** Test Cases ***
TC1
    ${files}    List Files In Directory    C:${/}Users${/}40032116${/}AppData${/}Local${/}Temp
    Log To Console    ${files}
    Log List   ${files}
    Log To Console    ${files}[0]

TC2
    Remove File    path=C:\demo
    File Should Not Exist    path=C:\demo

TC4
    ${name}     Set Variable    robot framework session
    Log To Console    ${name}
    ${u_name}   Convert To Upper Case    ${name}
    Log To Console    ${u_name}
    ${final_str}    Remove String   ${u_name}  SESSION
    Log To Console    ${final_str}

TC5
    ${num1}     Set Variable    $200,100
    ${num2}     Set Variable    $200
    ${num1}    Remove String    ${num1}     $   ,
    Log To Console    ${num1}
    ${num2}    Remove String    ${num2}     $
    Log To Console    ${num2}
    ${result}   Evaluate   ${num1}+${num2}
    Log To Console    ${result}
