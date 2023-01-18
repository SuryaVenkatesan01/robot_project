*** Settings ***
Library  DateTime


*** Test Cases ***
TC1
    Log To Console  message=Surya Venkatesan
    Log To Console  hello
    
TC2
    ${my_name}  Set Variable    Surya
    Log To Console  ${my_name}

TC3
    ${current_date}  Get Current Date
    Log To Console   ${current_date}

TC4
    ${radius}   Set Variable    4
    ${result}   Evaluate    3.14*${radius}*${radius}
