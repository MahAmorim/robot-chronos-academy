*** Settings ***
Documentation     Demonstração de tipos de variáveis
Resource    ../../src/config/package.robot

Test Setup    Log to console    .
Test Teardown        Log to console    -----------------------------------------------------------------------------
    

*** Test Cases ***
Cenario 01: Realizar Compra
    Adicionar item carrinho de compra
    Finalizar compra
    Confirmar compra

#Para rodar: robot -d test/results test/features/chronos.robot