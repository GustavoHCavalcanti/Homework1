# Relatório – Homework 01 (Ruby)

## Introdução
Este trabalho tem como objetivo praticar conceitos básicos e avançados da linguagem Ruby por meio de seis exercícios progressivos. Foram exploradas expressões regulares, manipulação de strings, estruturas de dados, orientação a objetos, metaprogramação e o conceito de open classes e duck typing.

---

## Parte 1 – Fun with Strings
- **Arquivo**: [src/parte01.rb](../src/parte01.rb)  
- **Problemas resolvidos**:
  - (a) Verificação de palíndromos ignorando maiúsculas, pontuação e caracteres não alfanuméricos.  
  - (b) Contagem de palavras em uma string, retornando um hash com frequências.  
- **Estruturas usadas**:  
  - Regex (`\W`, `\b`) para identificar palavras e remover não-palavras.  
  - Métodos de `String` (`downcase`, `gsub`, `reverse`, `scan`).  
  - `Hash` com `Hash.new(0)` para contagem.  
- **Alternativas**: usar loops `for` ou `while` em vez de iteradores (`each`, `scan`).  

---

## Parte 2 – Rock-Paper-Scissors
- **Arquivo**: [src/parte02.rb](../src/parte02.rb)  
- **Problemas resolvidos**:
  - (a) Jogo simples entre dois jogadores, com validações de entrada.  
  - (b) Torneio com chaves arbitrariamente aninhadas, resolvido por recursão.  
- **Estruturas usadas**:  
  - Classes de exceção personalizadas (`WrongNumberOfPlayersError`, `NoSuchStrategyError`).  
  - Recursão para resolver torneios.  
  - Arrays para armazenar jogadores.  
- **Alternativas**: poderia ser feito com laços iterativos e pilha para simular as rodadas, mas a recursão torna o código mais simples e natural.  

---

## Parte 3 – Anagrams
- **Arquivo**: [src/parte03.rb](../src/parte03.rb)  
- **Problema resolvido**: Agrupamento de anagramas em uma lista de listas.  
- **Estruturas usadas**:  
  - `Hash` com chave gerada por `word.downcase.chars.sort.join`.  
  - Iteração com `each`.  
- **Alternativas**: usar um `defaultdict` em outras linguagens (como Python) ou usar `group_by` em Ruby.  

---

## Parte 4 – Basic OOP
- **Arquivo**: [src/parte04.rb](../src/parte04.rb)  
- **Problemas resolvidos**:
  - Classe `Dessert` com atributos e métodos (`healthy?`, `delicious?`).  
  - Subclasse `JellyBean` com sobrescrita de método (`delicious?`).  
- **Estruturas usadas**:  
  - Classes, herança, `attr_accessor`, `super`.  
  - Sobrescrita de métodos (polimorfismo).  
- **Alternativas**: poderíamos implementar sem herança (usar composição), mas com herança o código fica mais direto.  

---

## Parte 5 – Metaprogramming
- **Arquivo**: [src/parte05.rb](../src/parte05.rb)  
- **Problema resolvido**: Implementação de `attr_accessor_with_history`, criando dinamicamente setters que guardam histórico de valores.  
- **Estruturas usadas**:  
  - Metaprogramação com `class_eval` e interpolação de strings Ruby.  
  - Open classes (extensão de `Class`).  
  - Variáveis de instância com sufixo `_history`.  
- **Alternativas**: usar `define_method` em vez de `class_eval`.  

---

## Parte 6 – Open Classes e Duck Typing
- **Arquivo**: [src/parte06.rb](../src/parte06.rb)  
- **Problemas resolvidos**:
  - (a) Extensão de `Numeric` para suportar conversão de moedas (com `method_missing` e `in`).  
  - (b) Extensão de `String` para adicionar `.palindrome?`.  
  - (c) Extensão de `Enumerable` para permitir `.palindrome?` em coleções.  
- **Estruturas usadas**:  
  - `method_missing` para interceptar chamadas dinâmicas.  
  - Open classes (`String`, `Enumerable`, `Numeric`).  
  - Duck typing: qualquer coleção que implemente `to_a` pode usar `.palindrome?`.  
- **Alternativas**: usar módulos separados e `refine` em vez de abrir classes diretamente (boa prática em projetos maiores).  

---

## Análise de tempo e esforço

| Parte | Tempo estimado | Observações |
|-------|----------------|-------------|
| 1     | 30min             | Primeiros contatos com exercíco da linguagem. |
| 2     | 30min           | Tratamento de erros + recursão. |
| 3     | 40min          | Agrupamento de anagramas via hash. |
| 4     | 50min          | OOP simples, herança e polimorfismo. |
| 5     | 1h           | Desafio de metaprogramação, uso de `class_eval`. |
| 6     | 1h             | Open classes e `method_missing`. |
| **Total** | 4h30 | Exercícios progressivos, metaprogramação exigiu mais esforço. |

---

## Conclusão e feedback
- O exercício ajudou a fixar conceitos de Ruby que diferem bastante de linguagens como C e Java.  
- As partes iniciais (strings, arrays, hashes) foram diretas; já metaprogramação e open classes exigiram leitura extra e testes.  
- O uso de LLM ajudou a explicar sintaxe, sugerir alternativas e depurar erros, mas ainda foi necessário revisar cuidadosamente o comportamento real no Ruby.  
