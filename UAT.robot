*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${REGISTERATION}	http://localhost:7272/Lab12/Registration.html
${SUCCESS}	http://localhost:7272/Lab12/Success.html
${BROWSER}	Firefox

*** Test Cases ***
Test 1
    Open Browser	${REGISTERATION}	${BROWSER}
    Title Should Be    Event Registration
Test 2
    Open Browser	${REGISTERATION}	${BROWSER}
    Input Text	firstname	Somsri	True
    Input Text	lastname	Sodsai	True
    Input Text	organization	CS KKU	True
    Input Text	email	somsri@kkumail.com	True
    Input Text	phone	081-001-1234	True
    Click Button	registerButton
    Location Should Be	${SUCCESS}
    Title Should Be	Success
