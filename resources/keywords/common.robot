*** Settings ***
Library     SeleniumLibrary
Resource    ../variables/variables.robot

*** Keywords ***
Abrir página inicial
    Open Browser  ${url}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Verifica se o College Manager foi aberto

Adicionar Estudante ${name}
    Wait Until Element Is Visible    ${name_student}
    Clear Element Text   ${name_student}
    Input Text    ${name_student}    ${name}
    Click Button    ${btn_student}
    Verificar Estudante Adicionado ${name}

Adicionar Curso ${name}
    Wait Until Element Is Visible    ${name_course}
    Clear Element Text    ${name_course}
    Input Text    ${name_course}    ${name}
    Click Button    ${btn_course}
    Verificar Curso Adicionado ${name}

Inscrever Estudante ID: ${id_estudante} no curso ID: ${id_curso}
    Wait Until Element Is Visible    ${id_student}
    Clear Element Text  ${id_student}
    Input Text    ${id_student}    ${id_estudante}
    Clear Element Text    ${id_course}
    Input Text    ${id_course}    ${id_curso}
    Click Button    ${btn_subscribe_student}
    Verificar Inscrição do Aluno ID: ${id_estudante} e curso id: ${id_curso}

Adicionar Disciplina ${name} id ${id}
    Wait Until Element Is Visible    ${name_discipline}
    Clear Element Text  ${name_discipline}
    Clear Element Text    ${id_discipline_course}
    Input Text    ${name_discipline}    ${name}
    Input Text    ${id_discipline_course}    ${id}
    Click Button    ${btn_add_discipline}

Adicionar Estudante ID: ${id_estudante} e Disciplina ID: ${id_disciplina}
    Clear Element Text    ${id_student_subscribe}
    Clear Element Text    ${id_discipline_subscribe}
    Input Text    ${id_student_subscribe}       ${id_estudante}
    Input Text    ${id_discipline_subscribe}    ${id_disciplina}
    Click Button    ${btn_subscribe_discipline}


Verifica se o College Manager foi aberto
    Location Should Be    ${URL}

Verificar Estudante Adicionado ${name}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*INFO Added student id: \\d+, Name: ${name}.*

Verificar Curso Adicionado ${name}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*INFO Added course id: \\d+, Nome: ${name}.*

Verificar Inscrição do Aluno ID: ${id_estudante} e curso id: ${id_curso}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*INFO Student id ${id_estudante} subscribed to course id ${id_curso}*

Assert falha ao criar matéria sem curso
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*FAIL Necessários 3 cursos para se criar a primeira matéria*

Verificar Mensagem de Sucesso
    [Arguments]    ${tipo}    ${name}
    ${mensagem}    Get Text    ${events}

    Run Keyword If    '${tipo}' == 'student'    Should Match Regexp    ${mensagem}    .*INFO Added student id: \\d+, Name: ${name}.*
    ...    ELSE IF    '${tipo}' == 'course'    Should Match Regexp    ${mensagem}    .*INFO Added course id: \\d+, Nome: ${name}.*
    ...    ELSE IF    '${tipo}' == 'discipline'    Should Match Regexp    ${mensagem}    .*INFO Added discipline id: \d+, Name: ${name}, Course: \\d+*
    ...    ELSE    Fail    Tipo de mensagem desconhecido: ${tipo}   

Eu preenchi o campo nome do estudante com ${name}
    Wait Until Element Is Visible    ${name_student}
    Clear Element Text   ${name_student}
    Input Text    ${name_student}    ${name}
    
Eu clicar em adicionar estudante
    Click Button    ${btn_student}

Eu preenchi o campo nome do curso com ${name}
    Wait Until Element Is Visible    ${name_course}
    Clear Element Text    ${name_course}
    Input Text    ${name_course}    ${name}

Eu clicar em adicionar curso
    Click Button    ${btn_course}


verifica se o ${tipo} ${name} foi adicionado
    ${mensagem}    Get Text    ${events}
    Run Keyword If    '${tipo}' == 'estudante'    Should Match Regexp    ${mensagem}    .*INFO Added student id: \\d+, Name: ${name}.*
    ...    ELSE IF    '${tipo}' == 'curso'    Should Match Regexp    ${mensagem}    .*INFO Added course id: \\d+, Nome: ${name}.*
    ...    ELSE IF    '${tipo}' == 'disciplina'    Should Match Regexp    ${mensagem}    .*INFO Added discipline id: \\d+, Name: ${name}, Course: \\d+.*
    ...    ELSE    Fail    Tipo de mensagem desconhecido: ${tipo}   
    
que Eu inscrevi o Estudante de ID: ${id_estudante} no curso de ID: ${id_curso}
    Wait Until Element Is Visible    ${id_student}
    Clear Element Text  ${id_student}
    Input Text    ${id_student}    ${id_estudante}
    Clear Element Text    ${id_course}
    Input Text    ${id_course}    ${id_curso}
    

Eu clicar em inscrever estudante no curso 
    Click Button    ${btn_subscribe_student}

Verifica se o estudante de ID: ${id_estudante} foi adicionado ao curso de ID: ${id_curso} 
    Verificar Inscrição do Aluno ID: ${id_estudante} e curso id: ${id_curso}

Eu preenchi o nome da disciplina ${name} e o Curso ID: ${id}
    Wait Until Element Is Visible    ${name_discipline}
    Clear Element Text  ${name_discipline}
    Clear Element Text    ${id_discipline_course}
    Input Text    ${name_discipline}    ${name}
    Input Text    ${id_discipline_course}    ${id}

Eu clicar em adicionar disciplina
    Click Button    ${btn_add_discipline}


Eu inscrevi o estudante de ID: ${id_estudante} na disciplina ID: ${id_disciplina}
    Clear Element Text    ${id_student_subscribe}
    Clear Element Text    ${id_discipline_subscribe}
    Input Text    ${id_student_subscribe}       ${id_estudante}
    Input Text    ${id_discipline_subscribe}    ${id_disciplina}


Eu clicar no botão de inscrição de disciplina    
    Click Button    ${btn_subscribe_discipline}

Verificar Curso Adicionado ${name}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*INFO Added course id: \\d+, Nome: ${name}.*


Verifica se Estudante de ID: ${id_estudante} foi inscrito na disciplina de ID: ${id_curso}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}    .*INFO Student id ${id_estudante}, Name douglas subscribed to discipline id ${id_curso}*

Verifica se Estudante de ID: ${id_estudante} foi inscrito na materia de ID: ${id_disciplina}
    ${mensagem}    Get Text    ${events}
    Should Match Regexp    ${mensagem}   .* WARN Aluno deve se inscrever em \\d+ materias no minimo.*  