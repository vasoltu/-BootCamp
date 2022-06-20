*** Variables ***
# Ряд 1,2,3,5,1,0,-1,10
@{list}     ${1}    ${2}    ${3}    ${5}    ${1}   ${0}   ${-1}   ${10}
@{Unique_list}     ${0}    ${1}    ${2}    ${3}    ${5}   ${10}   ${-1}
*** Test Cases ***
Min_Max
   Finding_the_minimum_and_maximum
Unique_values
    Create_a_unique_list
Sum_of_List_Elements
    Sum_of_all_list_items


*** Keywords ***
Finding_the_minimum_and_maximum
    ${max}=    Evaluate    max($list)
    Log To Console  Max_value ${max}
    Should be equal as numbers    ${max}    10
    ${min}=    Evaluate    min($list)
    Log To Console  Min_value ${min}
    Should be equal as numbers    ${min}    -1
Create_a_unique_list
    @{unique_numbers}=    Evaluate    list(set($list))
    Log To Console  Unique_list ${unique_numbers}
    Should Be Equal    ${unique_numbers}    ${Unique_list}
Sum_of_all_list_items
    ${sum_el}=    Evaluate  sum($list)
    Log to console  Summa ${sum_el}
    Should be equal as numbers    ${sum_el}    21
