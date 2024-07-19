
<p align="center">
  <img src="https://cdn-images-1.medium.com/v2/resize:fill:72:72/1*g2kGTDFfC8sjJPg4ZObkGw.png" alt="Cumbuca Logo" width="100" style="border-radius: 50%; border: none;">
  <h1 align="center">Cumbuca Challenge</h1>
</p>


## Introdução
Desenvolvi o projeto abaixo para a vaga de Engenheiro de Suporte na [Cumbuca](https://www.cumbuca.com/), uma fintech que ajuda pessoas a cuidarem melhor das finanças coletivas.

### Descrição

 O desafio consiste em criar uma ferramenta de linha de comando em Elixir para resolver um problema no reino fictício de Cumbúquia, onde os registros históricos da família real foram perdidos. Minha tarefa foi desenvolver uma ferramenta que, a partir de uma lista de nomes de reis e rainhas, numerasse corretamente cada nome com algarismos romanos.

## Ferramenta

A ferramenta que desenvolvi é uma interface de linha de comando (CLI) que:

1. Solicita ao usuário que insira uma lista de nomes de reis e rainhas, um por linha.
2. Considera a lista terminada quando uma linha em branco é inserida.
3. Retorna os nomes numerados corretamente com algarismos romanos, incrementando a numeração a cada repetição de nome.


## Estrutura do Projeto

```
.formatter.exs
.gitignore
README.md
lib
   |-- cumbuca_challenge.ex
mix.exs
test
   |-- cumbuca_challenge_test.exs
   |-- test_helper.exs

```

## Pré-requisitos

- Elixir **v1.16** ou superior

[![Elixir](https://img.shields.io/badge/Elixir-4B275F?style=for-the-badge&logo=elixir&logoColor=white)](https://elixir-lang.org/) 
[![Mix](https://img.shields.io/badge/Mix-4B275F?style=for-the-badge&logo=mix&logoColor=white)](https://hexdocs.pm/mix/Mix.html)

## Instalação

### Clone o repositório e instale as dependências:

```
git clone https://github.com/Tassio-Med/cumbuca-challenge.git
```
### Passos para Compilação e Execução

1. **Instalar dependências:**
   ```
   mix deps.get
   ```
2. **Compilar o projeto:**
    ```
    mix escript.build
    ````
3. **Executar a ferramenta:**
    ```
    ./cumbuca_challenge
    ```

## Testes Automatizados
Incluí testes automatizados para validar a numeração correta dos nomes e a conversão de números para algarismos romanos.

**Para rodar os testes, utilize o comando:**
```
mix test
```

## Considerações Finais
Este projeto foi desenvolvido com foco em **legibilidade**, **clareza** e **funcionalidade**. Espero que atenda às expectativas da equipe da Cumbuca e estou à disposição para discutir qualquer detalhe ou melhoria necessária.

Agradeço pela oportunidade e espero contribuir com a missão da Cumbuca de ajudar pessoas a cuidarem melhor de suas finanças coletivas.

<p align="center">
  <a href="#top" align="center" id="back-to-top">Voltar ao topo ⬆️</a>
</p>