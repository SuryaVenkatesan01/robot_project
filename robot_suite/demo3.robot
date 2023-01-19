*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}       8989898989
@{COLORS}   red    green   violet
&{MY_DETAILS}   name=Surya  role=Associate Engineer  mobile=9797979797

*** Test Cases ***
TC1
    ${my_name}  Set Variable    Surya
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}
    
TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${MOBILE_NUM}
    
TC3
    Log To Console    ${COLORS}[2]
    Log To Console    ${COLORS}

TC4
    ${item_count}   Get Length    ${COLORS}
    Log To Console    ${COLORS}

TC5
    @{fruits}   Create List     apple   orange  mango
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}     grapes
    Remove Values From List    ${fruits}    apple
    Insert Into List    ${fruits}    1    pineapple
    ${len}   Get Length    ${fruits}
    Log To Console    ${len}
    Log   ${fruits}

TC6
    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}
    END

TC7 for loop
      @{fruits}   Create List   orange   mango   apple   pineapple  kiwi
      ${count}  Get Length    ${fruits}
      Log To Console    ${count}
      FOR    ${a}    IN RANGE   0  ${count}
        Log To Console  ${fruits}[${a}]
      END
TC8 for each
    @{fruits}   Create List   orange   mango   apple   pineapple  kiwi
    FOR    ${fruit}    IN    @{fruits}
        Log To Console    ${fruit}
    END

TC9
    Log To Console    ${MY_DETAILS}[mobile]

TC10
    &{emp_dict}     Create Dictionary   emp_id=202  emp_name=Surya  role=AE
    Log To Console    ${emp_dict}[emp_id]
    Log Dictionary    ${emp_dict}