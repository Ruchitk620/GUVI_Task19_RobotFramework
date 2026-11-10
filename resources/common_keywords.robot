
*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open RobotSpareBin Application
    [Documentation]    Open Chrome and navigate to the RobotSpareBin login page.
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=username    timeout=15s
    Wait Until Element Is Visible    name=password    timeout=10s

Login To RobotSpareBin
    [Documentation]    Enter valid credentials and submit the login form.
    Input Text    id=username    ${USERNAME}
    Input Password    name=password    ${PASSWORD}
    Click Button    xpath=//button[@type="submit"]

Verify Login Successful
    [Documentation]    Verify successful login using the visible username and logout button.
    Wait Until Element Is Visible
    ...    xpath=//button[normalize-space(.)="Log out"]
    ...    timeout=15s
    Page Should Contain    maria

Logout From RobotSpareBin
    [Documentation]    Click the actual logout button and verify return to login form.
    Click Button    xpath=//button[normalize-space(.)="Log out"]
    Wait Until Element Is Visible    id=username    timeout=15s
    Wait Until Element Is Visible    name=password    timeout=10s
    Page Should Contain Element    id=username
