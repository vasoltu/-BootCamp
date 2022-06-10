*** Test Cases ***
Formula_test
   Set_of_values

*** Keywords ***
Set_of_values
    ${First}=    Evaluate     9/5 * 0 + 32
    Log To Console  First_value ${First}
    Should be equal as numbers    ${First}    32
    ${Second}=    Evaluate     9/5 * 350 + 32
    Log To Console  Second_value ${Second}
    Should be equal as numbers    ${Second}    662
    ${Third}=    Evaluate     9/5 * -(32) + 32
    Log To Console  Third_value ${Third}
    Should be equal as numbers    ${Third}    -25.6
    ${Fourth}=    Evaluate     9/5 * 100 + 32
    Log To Console  First_value ${Fourth}
    Should be equal as numbers    ${Fourth}    212
