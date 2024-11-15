*** Settings ***
Variables   my_vars.py
Resource    common.resource
Library    Collections
Test Tags      example1    example2
Test Setup    Log To Console
Suite Setup    Log    5
Test Teardown    Log
Documentation    this file is just for excercising

*** Test Cases ***
test
    [Documentation]   just for this test case
    Set Test Variable
    Set Variable
    Log  ${qa}

*** Variables ***




*** Keywords ***
