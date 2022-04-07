*** Settings ***
Library  SeleniumLibrary
Suite Setup  Log    Inside Test Suite Setup
Suite Teardown  Log     Inside Test Suite Teardown

Test Setup  Log     Inside Test Case Setup
Test Teardown  Log  Inside Test Case Teardown
*** Variables ***
${link}  https://www.google.co.in/
${input}  Amazon
${producttosearch}  poco x3 pro
${emailaddress}  3dhanushkccd@gmail.com

*** Test Cases ***
Goggle Test
    [Documentation]  this is goggle screen
    [Tags]  goggle
    open Browser  ${link}   chrome
    Maximize Browser Window
    data
    Submit form
    Click Element  Class:LC20lb
Amazon Test
    [Documentation]  this is for amazon page
    [Tags]  shopping
    sleep  3s
    product
    Click Element  Xpath:/html/body/div[1]/header/div/div[1]/div[2]/div/form/div[3]/div/span/input
Product Order Test
    [Documentation]  this for product order
    [Tags]  shopping
    sleep  3s
    Click Element  Xpath:/html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a/span
    sleep  3s
#    Switch Window  class:a-size-large product-title-word-break
#    sleep  3s
    Click Button  class:a-button-input
Placing Order Test
    [Documentation]  this is for placing order
    [Tags]  placing
    sleep  3s
    email
    Click Element  name:email








*** Keywords ***
data
    Input Text  name:q  ${input}
product
    Input Text  name:field-keywords  ${producttosearch}
email
    Input Text  Xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div[1]/form/div/div/div/div[1]/input[1]  ${emailaddress}