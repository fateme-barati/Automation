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



*** Variables ***
${name}        Fatemeh
@{my_list}     a    b     c
@{team_name1}    Bugget    Roze
&{Dict}        name=Ali    age=35    color=yellow



*** Keywords ***
log your QA sub team
    [Documentation]    you can use this section after the keyword for Describing
    Log    ${qa}


Member of ${team_name} Team
    Log    team_name=${team_name1}[0]


