*** Settings ***
Documentation  This test is to demo behavioural driven development
...            second line
Metadata       Author : Praveen Anna Haridas
Resource  ../library/search.lib.robot

*** Test Cases ***
The objective of this test is to ensure google search by name is working
    Given google search screen is displayed
    When search by name  Samsung
    Then relavant search result page should be displayed