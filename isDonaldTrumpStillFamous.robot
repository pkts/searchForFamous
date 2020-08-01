# This Robot script checks if Donald Trump still is the most famous person today

*** Settings ***
Documentation       Is Donald Trump still the most famous person today?
Library             SeleniumLibrary
Suite Setup         Go to homepage
Suite Teardown      Close window


*** Test Cases ***
Check if Donald Trump is still famous
    Google and check results    searchkey=Who is the most famous person today   result=Donald Trump


*** Variables ***
${URLwelcome}           https://www.google.co.nz
#${BROWSER}              chrome
#${BROWSER}              safari
${BROWSER}              firefox

*** Keywords ***
Go to homepage
    Open Browser    ${URLwelcome}    ${BROWSER}

Google and check results
    [Arguments]                 ${searchkey}    ${result}
    Input Text                  name=q          ${searchkey}
    Press Keys                  name=q          RETURN
    Wait Until Page Contains    ${result}
