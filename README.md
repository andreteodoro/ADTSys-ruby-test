# Teste Ruby para Candidatos

## Resumo

O objetivo da aplicação é consultar marcas e modelos de carros usando a API do WebMotors.

## Refactor

1. Foram corrigidos pequenos erros que impediam a aplicação de ser inicializada como um debugger e a falta do arquivo database.yml
2. Foi criado um serviço para tratar das requisições http
3. Os models foram refatorados para receber os devidos relacionamentos
4. A lógica que estava presente nas views e controllers foi movida para os models, encapsulando as chamadas para obter as marcas e modelos através do próprio model
5. Views e controllers foram refatorados para utilizar helpers e seguir o padrão DRY
7. Foi adicionada a gem do Bootstrap, as views foram estilizadas
8. Foram adicionados alguns unit tests utilizando rspec


