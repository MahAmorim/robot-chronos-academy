*** Settings ***
Documentation     RobotFramework Chronos
       
Resource    ../../config/package.robot
Library           SeleniumLibrary    timeout=2000
Library           String

*** Keywords ***
Adicionar item carrinho de compra
    Log to console                   Adicionar item carrinho de compra
    Open Browser                     ${url}    ${navegador}
    Maximize Browser Window
    Click Link                       Laptops
    Wait Until Element Is Visible    link=MacBook Pro
    Click Link                       MacBook Pro
    Wait Until Element Is Visible    xpath=//div[2]//a
    Click Element                    xpath=//div[2]//a
    Alert Should Be Present
    Log to console                   Item adicionado no carrinho

Finalizar compra
    Log to console                   Adicionar item carrinho de compra
    Click Link                       Cart
    Click Button                     css=.btn-success
    Wait Until Element Is Visible    id=name
    Input Text                       id=name       ${name}
    Log to console                   ${name}
    Input Text                       id=country    ${country}
    Log to console                   ${country}
    Input Text                       id=city       ${city}
    Log to console                   ${city}
    Input Text                       id=card       ${card}
    Log to console                   ${card}
    Input Text                       id=month      ${month}
    Log to console                   ${month}
    Input Text                       id=year       ${year}
    Log to console                   ${year}
    Click Button                     xpath=//button[text()='Purchase']
    Log to console                   Compra finalizada

Confirmar compra
    Log to console            Confirmar compra
    Element Text Should Be    css=.sweet-alert > h2    Thank you for your purchase!
    Click Button              css=.confirm
    Sleep                     5 seconds
    Log to console            Compra confirmada