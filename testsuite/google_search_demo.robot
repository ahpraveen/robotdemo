*** Settings ***
Documentation  Test Script Structure should test setup, test and test teardown
Metadata  Author - Praveen Anna Haridas
Library  Selenium2Library
Test Setup  open browser and navigate to google.com
Test Teardown  close the browser

*** Variables ***
${URL}      http://www.google.com
${Browser}      chrome

*** Test Cases ***
The objective of this test is to ensure google search by name is working
        Verify google search page should be displayed
        Search by name  Samsung
        Verify Samsung search result page is displayed

*** Keywords ***
open browser and navigate to google.com
        Open Browser     ${URL}  ${Browser}
        maximize browser window

Verify google search page should be displayed
        title should be  Google

Search by name
        [Arguments]  ${name}

        wait until element is visible  id=lst-ib
        input text  id=lst-ib  ${name}
        wait until element is visible  xpath=//input[@value='Google Search']
        click button  xpath=//input[@value='Google Search']

Verify Samsung search result page is displayed
        title should be  Samsung - Google Search

close the browser
        close browser