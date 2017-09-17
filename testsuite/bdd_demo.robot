# Thie test is to demo behavioural driven development
# Author - Praveen Anna Haridas

*** Settings ***
Resource  ../library/search.lib.robot

*** Test Cases ***
The objective of this test is to ensure google search by name is working
    Given google search screen is displayed
    When search by name  Samsung
    Then relavant search result page should be displayed