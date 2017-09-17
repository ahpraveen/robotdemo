# Thie test is to demo behavioural driven development
# Author - Praveen Anna Haridas

*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}      http://www.google.com
${Browser}      chrome

*** Test Cases ***
The objective of this test is to ensure google search by name is working
    Given google search screen is displayed
    When search by name  Samsung
    Then relavant search result page should be displayed


*** Keywords ***
google search screen is displayed
        Open Browser     ${URL}  ${Browser}
        maximize browser window
        title should be  Google

search by name
        [Arguments]  ${name}
        wait until element is visible  id=lst-ib
        input text  id=lst-ib  ${name}
        wait until element is visible  xpath=//input[@value='Google Search']
        click button  xpath=//input[@value='Google Search']

relavant search result page should be displayed
        title should be  Samsung - Google Search
        close browser