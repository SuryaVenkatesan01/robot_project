*** Settings ***
Library     RequestsLibrary
Library    OperatingSystem

Suite Setup     Create Session    alias=petshop    url=https://petstore.swagger.io/v2
*** Test Cases ***
TC1 Get Pet
    ${response}     GET On Session      alias=petshop       url=pet/5001
    Status Should Be    200

TC2 Pet Not Found
    ${response}     GET On Session      alias=petshop       url=pet/102     expected_status=404
    Status Should Be    404
    ${response_body}    Convert To String    ${response.json()}
    Should Contain    ${response_body}    Pet not found

TC3 Get Query String
    ${response}     GET On Session  alias=petshop     url=pet/findByStatus?status=sold
    Status Should Be    200
    Log    ${response.json()}
    Log    ${response.json()}[0][id]

TC4 Add Pet
    ${json}     Get Binary File     path=${EXECDIR}${/}test_data${/}data.json
    &{headers}      Create Dictionary   content-type=application/json
    ${response}     POST On Session     alias=petshop   url=pet     data=${json}    headers=${headers}
    Status Should Be    200
    Log    ${response.json()}
