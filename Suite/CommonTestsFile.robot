*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../resources/Variables.robot
*** Test Cases ***
User load page
    Load Page And Maximize Browser Window
    Close all Browsers
User try a different login scenarious
    [Template]  Login Scenarious
    &{CORRECT LOGIN AND PASSWORD}
    &{CORRECT LOGIN}
    &{CORRECT PASSWORD}
User search the cars
    Load Page And Maximize Browser Window
    Search The Car
    Select One Of The Results
    Close All Browsers
