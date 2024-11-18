*** Settings ***
Library      SeleniumLibrary
Resource     ../resources/keywords/common.robot
#Resource     ../resources/variables/variables.robot
Suite Setup     Abrir Página Inicial

*** Test Cases ***

Cenário Adicionar Estudante
    Given Eu preenchi o campo nome do estudante com douglas
    When Eu clicar em adicionar estudante
    Then verifica se o estudante douglas foi adicionado

Cenário Adicionar Curso de Matemática
    Given Eu preenchi o campo nome do curso com Matemática
    When Eu clicar em adicionar curso
    Then verifica se o curso Matemática foi adicionado

Cenário increver estudante no curso
    Given que Eu inscrevi o Estudante de ID: 1 no curso de ID: 1
    When Eu clicar em inscrever estudante no curso
    Then Verifica se o estudante de ID: 1 foi adicionado ao curso de ID: 1 

Cenário Adicionar Curso de Geografia
    Given Eu preenchi o campo nome do curso com Geografia
    When Eu clicar em adicionar curso
    Then verifica se o curso Geografia foi adicionado

Cenário Adicionar curso de Português
    Given Eu preenchi o campo nome do curso com Português
    When Eu clicar em adicionar curso
    Then Verifica se o curso Português foi adicionado

Cenário Adicionar primeira disciplina no curso 1
    Given Eu preenchi o nome da disciplina GAAL e o Curso ID: 1
    When Eu clicar em adicionar disciplina
    Then verifica se o disciplina GAAL foi adicionado

Cenário Adicionar segunda disciplina no curso 1
    Given Eu preenchi o nome da disciplina Grafos e o Curso ID: 1
    When Eu clicar em adicionar disciplina
    Then verifica se o disciplina Grafos foi adicionado

Cenário Adicionar terceira disciplina no curso 1
    Given Eu preenchi o nome da disciplina Programacao e o Curso ID: 1
    When Eu clicar em adicionar disciplina
    Then verifica se o disciplina Programacao foi adicionado

Cenário Adicionar terceira disciplina no curso 1
    Given Eu preenchi o nome da disciplina Cálculo e o Curso ID: 1
    When Eu clicar em adicionar disciplina
    Then verifica se o disciplina Cálculo foi adicionado

Cenário Inscrever Estudante 1 na Matéria 1
    Given Eu inscrevi o estudante de ID: 1 na disciplina ID: 1
    When Eu clicar no botão de inscrição de disciplina
    Then Verifica se Estudante de ID: 1 foi inscrito na materia de ID: 1

Cenário Inscrever Estudante 1 na Matéria 2
    Given Eu inscrevi o estudante de ID: 1 na disciplina ID: 2
    When Eu clicar no botão de inscrição de disciplina
    Then Verifica se Estudante de ID: 1 foi inscrito na materia de ID: 2

Cenário Inscrever Estudante 1 na Matéria 3
    Given Eu inscrevi o estudante de ID: 1 na disciplina ID: 3
    When Eu clicar no botão de inscrição de disciplina
    Then Verifica se Estudante de ID: 1 foi inscrito na disciplina de ID: 3

Cenário Inscrever Estudante 1 na Matéria 4
    Given Eu inscrevi o estudante de ID: 1 na disciplina ID: 4
    When Eu clicar no botão de inscrição de disciplina
    Then Verifica se Estudante de ID: 1 foi inscrito na disciplina de ID: 4

# Gerenciar College
#     Adicionar Estudante douglas
#     Adicionar Curso mat
#     Inscrever Estudante ID: 1 no curso ID: 1
#     Adicionar Disciplina mat id 1
#     Adicionar Curso por
#     Adicionar Curso geo
#     Adicionar Disciplina mat id 1
#     Adicionar Estudante ID: 1 e Disciplina ID: 1
#     Inscrever Estudante ID: 1 no curso ID: 2
#     Inscrever Estudante ID: 1 no curso ID: 3
#     Adicionar Estudante ID: 1 e Disciplina ID: 1
