# Trabalho: Automação da Aplicação Web College Manager.

Este projeto automatiza o processo de criar estudantes, cursos, disciplinas e inscrever um estudante em cursos e disciplinas na aplicação Web College Manager. O script de teste está escrito em Robot Framework e utiliza o Selenium para automação do navegador.

## Estrutura do Projeto

- **Arquivo de Teste**: `tests/College_manager.robot` — Contém os casos de teste para automação.
- **Tecnologias Utilizadas**: Robot Framework, SeleniumLibrary, Selenium, pytest.

## Pré-requisitos

- **Python** (versão 3.7 ou superior)
- **pip** (gerenciador de pacotes Python)
- **Navegador**: Google Chrome ou Mozilla Firefox
- **Driver de Navegador**: ChromeDriver para Google Chrome ou GeckoDriver para Mozilla Firefox (deve estar no PATH do sistema)

## Instalação de Requisitos

1. Clone este repositório ou faça o download do código-fonte.
2. Navegue até o diretório raiz do projeto:
   ```bash
   cd /caminho/para/o/projeto
   ```
3. Instale as dependências listadas em requirements.txt:
```
pip install -r requirements.txt 
```
Nota: Certifique-se de que o Python e o pip estão corretamente configurados no PATH do sistema.

## Configuração do Driver de Navegador
1. ChromeDriver (para Google Chrome):
* Faça o download do ChromeDriver a partir de [aqui](https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br).
* Extraia o executável e adicione-o ao PATH do sistema.
2. GeckoDriver (para Mozilla Firefox):
* Faça o download do GeckoDriver a partir de [aqui](https://github.com/mozilla/geckodriver/releases).
* Extraia o executável e adicione-o ao PATH do sistema.

## Executando os Testes
Navegue até o diretório que contém o arquivo de teste:
```
cd tests
```
Execute o script de teste com o Robot Framework:
```
robot -d .\logs .\College_manager.robot`
```
Isso executará todos os casos de teste definidos no arquivo College_manager.robot.

## Descrição do trabalho:

Trabalho: Automação da aplicação Web College ManagerLinks to an external site.
[link](https://tdd-detroid.onrender.com/)
cria um aluno (student)
cria 3 cursos (courses);
inscreve o aluno no curso de id 1
adiciona 3 matérias (disciplines) no curso de id 1
inscreve o aluno nas matérias de id 1,2,3
Neste vídeoLinks to an external site. é possível ter uma idéia de como a sua execução ficará ao final do trabalho
