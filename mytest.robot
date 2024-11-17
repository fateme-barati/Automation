*** Settings ***
Variables   my_vars.py
Resource    common.resource
Library    Collections
Test Tags      example1    example2
Test Setup    Log To Console   salam
Suite Setup    Log    5
#Test Teardown    Log
Documentation    this file is just for practicing

*** Test Cases ***
test
    [Documentation]   just for this test case
    [Tags]    1234
    Set Test Variable   ${a}    6
    Set Variable
    log your QA sub team
    Member of Bugget team
    Keywords inside each other


test1
    IF        '${condition}'=='salam'
        Log    Farsi
    ELSE IF   '${condition}'=='hi'
        Log    english
    ELSE
        Log    unknown
    END


test2
    FOR      ${item}    IN    @{my_list}
        Log  ${item}
    END


*** Variables ***
${name}        Fatemeh
@{my_list}     a    b     c
@{team_name1}    Bugget    Roze
&{Dict}        name=Ali    age=35    color=yellow
${condition}    salam



*** Keywords ***
log your QA sub team
    [Documentation]    you can use this section after the keyword for Describing
    Log    ${qa}


Member of ${team_name} Team
    Log    team_name=${team_name1}[0]


Keywords inside each other
    Test Argument    Fateme    Barati    12


Test Argument
    [Arguments]     ${name}    ${family}    ${age}=19
    Log    ${name}   
    Log    ${family}
    Log    ${age}