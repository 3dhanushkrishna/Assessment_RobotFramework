*** Settings ***
Library  SeleniumLibrary
Suite Setup  Log   Inside Test Suite Setup
Suite Teardown  Log  Inside Test Suite Teardown

Test Setup  Log  Inside Test case Setup
Test Teardown  Log  Inside Test Case Teardown

*** Variables ***
${google}  https://www.google.co.in/
${search}  filpkart
${product}  LG TV
${email}  3dhanushkccd@gmail.com
${password}  123456

*** Test Cases ***
Google Search Test
    [Documentation]  this is for goggle
    [Tags]  Google
    Open Browser  ${google}  chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb

Filpkart Search Test
    [Documentation]  This is for flipkart page
    [Tags]  filpkart
    sleep  3s
    Click Button  class:_2KpZ6l
    Search Filpkart Data
    sleep  3s
    Click Button  class:L0Z3Pu

Purchase Item Test
    [Documentation]  This page is for Purchase
    [Tags]  Purchase
    sleep  3s
    Click Element  xpath:/html/body/div/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    Switch Window  title:LG 139 cm (55 inch) Ultra HD (4K) LED Smart TV Online at best Prices In India
    sleep  3s
    Click Button  xpath:/html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  3s
    Email Address
    sleep  3s
    Click Button  xpath:/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button
    sleep  3s
    Password
    sleep  3s
    Click Button  xpath:/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[4]/button
    sleep  3s


*** Keywords ***
Search Data
    Input Text  name:q  ${search}

Search Filpkart Data
    Input Text  name:q  ${product}

Email Address
    Input Text  class:_17N0em  ${email}

Password
    Input Text  xpath:/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[2]/input  ${password}address}