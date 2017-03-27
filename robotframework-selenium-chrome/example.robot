*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Google Devops And Find Eficode
    Open Browser To Google
    Search For Devops
    Result Should Contain Eficode

*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.fi    browser=chrome
    Maximize Browser Window
    Google Should Be Open

Search For Devops
    Input Text    lst-ib    Eficode Devops
    Press Key    lst-ib    \\13

Result Should Contain Eficode
    Wait Until Page Contains    www.eficode.fi    10 s

Google Should Be Open
    Location Should Contain    www.google.fi