# Sistema de Gerenciamento de Construtoras e Obras

Sistema de banco de dados relacional para gerenciar construtoras, obras, trabalhadores e equipamentos utilizados em projetos de construção civil.

## Tecnologias

- **SQL**
- **Oracle Database**

## Estrutura do Banco de Dados

O sistema conta com **7 tabelas** relacionadas:

- **Construtora** - Dados das empresas construtoras
- **Obras** - Informações dos projetos de construção
- **Trabalhadores** - Funcionários alocados nas obras
- **Categorias** - Classificação dos equipamentos
- **Equipamentos** - Equipamentos disponíveis para locação
- **Equip_Obra** - Controle de uso de equipamentos por obra
- **Construtora_Telefone** - Contatos das construtoras

## 🔗 Relacionamentos

O banco possui integridade referencial através de chaves estrangeiras:

- Obras vinculadas a Construtoras
- Trabalhadores alocados em Obras específicas
- Equipamentos categorizados
- Registro de uso de equipamentos por obra com período de utilização

## Funcionalidades Implementadas

### Consultas Desenvolvidas

✅ Listagem de trabalhadores com salário acima de R$ 2.500  
✅ Cálculo de folha de pagamento por obra (SUM)  
✅ Ordenação de trabalhadores por nome e salário  
✅ Relacionamento entre categorias de equipamentos e obras (JOIN)

## Estrutura dos Arquivos

```
├── Script (Criação das Tabelas).sql    # DDL - Estrutura do banco
├── Script (População das tabelas).sql  # DML - Inserção de dados
└── Script (4 consultas).sql           # Queries completas
```

## Conceitos Aplicados

- Modelagem de banco de dados relacional
- Constraints (PRIMARY KEY, FOREIGN KEY, NOT NULL)
- Normalização de dados
- Consultas SQL com agregações e junções
- Integridade referencial


⭐ Projeto desenvolvido como parte do curso de Análise e Desenvolvimento de Sistemas na PUCRS
