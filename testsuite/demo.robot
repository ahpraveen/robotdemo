*** Settings ***
Library  Selenium2Library
#Library  OperatingSystem
#Suite Setup  Setup chromedriver

*** Test Cases ***
Launch browser
        open browser using url

*** Keywords ***
open browser using url
        Open Browser     http://www.google.com  chrome
        close browser

#Setup chromedriver
 #      Set Environment Variable  webdriver.chrome.driver  C://tools//chromedriver_win32//chromedriver.exe


