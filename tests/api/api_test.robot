*** Settings ***
Documentation       Suíte de testes de Api

Library             RequestsLibrary


*** Variables ***
${API_URL}      https://api.adviceslip.com/advice
${SESSION}      test


*** Test Cases ***
Criar sessão para atualização cadastral
    Create Session
    ...    ${SESSION}
    ...    ${API_URL}
    ...    disable_warnings=True

    ${RESPONSE}=    GET On Session
    ...    ${SESSION}
    ...    url=${API_URL}
    ...    expected_status=200

    Should Be Equal As Strings    ${response.status_code}    200
