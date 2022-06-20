*** Settings ***
Resource        resource.robot
Test Setup      Test Setup
Test Teardown   Test Teardown
*** Variables ***
${resp}
${body1}
${body2}
*** Test Cases ***
Post
    ${body1}=   Create Dictionary  category=17    categoryname=Thriller
    ${resp}=    POST On Session    alias    /categories    json=${body1}
    ${body2}=   Create Dictionary  category=18    categoryname=Dorama
    ${resp}=    POST On Session    alias    /categories    json=${body2}
Post_Check
    [Template]      Get And Check Response
    categories      category=gt.0      200

Finding_the_data
    [Template]      Get And Check Response
    categories       category=gt.5          200
    customers        creditcardtype=eq.1&state=like.DC          200
    products         category=eq.16&price=gt.20         200
*** Keywords ***

Get And Check Response
    [Arguments]     ${table}     ${params}     ${expected result}     ${message}=‘’

    ${response}      Req.GET On Session     alias    /${table}?   params=${params}     expected_status=${expected result}

    run keyword if      ${expected result} != 200
    ...       should contain   ${response.json()}[message]      ${message}

Test Setup
    Req.Create session          alias       http://localhost:3000
Test Teardown
    Req.Delete All Sessions
