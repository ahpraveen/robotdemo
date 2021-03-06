*** Settings ***
Documentation  Test Script Structure should test setup, test and test teardown
Metadata  Author - Praveen Anna Haridas
Library  Selenium2Library
Test Template  Search by name

*** Variables ***
${URL}      http://www.google.com
${Browser}      chrome

*** Test Cases ***
Search Test
        Samsung  Samsung - Google Search
        Apple  Apple - Google Search

*** Keywords ***
Search by name
        [Arguments]  ${name}    ${resultresult}
        Open Browser     ${URL}  ${Browser}
        maximize browser window
        title should be  Google
        wait until element is visible  id=lst-ib
        input text  id=lst-ib  ${name}
        wait until element is visible  xpath=//input[@value='Google Search']
        click button  xpath=//input[@value='Google Search']
        title should be  ${resultresult}
        close browser