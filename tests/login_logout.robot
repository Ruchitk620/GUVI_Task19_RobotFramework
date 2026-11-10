
*** Settings ***
Documentation    GUVI Task 19 - RobotSpareBin login and logout automation.
Resource         ../resources/variables.robot
Resource         ../resources/common_keywords.robot
Test Setup       Open RobotSpareBin Application
Test Teardown    Close All Browsers

*** Test Cases ***
Verify Valid Login And Logout
    [Documentation]    Verify valid login, authenticated landing page and successful logout.
    Login To RobotSpareBin
    Verify Login Successful
    Logout From RobotSpareBin
