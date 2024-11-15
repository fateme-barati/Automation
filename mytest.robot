*** Settings ***
Variables   my_vars.py
Resource    common.resource
Library    Collections
Test Tags      example
Test Setup    Log To Console
Suite Setup    Log    5

*** Test Cases ***
test
    Set Test Variable
    Set Variable
    Log  ${qa}

*** Variables ***




*** Keywords ***
