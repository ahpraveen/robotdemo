*** Settings ***
Metadata  Author - Praveen Anna Haridas

*** Test Cases ***
Example
    ${Name}=        Create List         John    Joe     Brito
    LENGTH SHOULD BE    ${Name}  3
    LOG MANY  @{Name}