# Sudoku 2x2 em Prolog

---
Este projeto implementa um resolvedor de Sudoku 2x2 
usando Prolog. O objetivo é encontrar todas as soluções 
válidas para uma grade 2x2. 

## Descrição do Problema

O Sudoku 2x2 é uma versão simplificada do Sudoku tradicional, onde:

1. A grade é composta por 4 células (2x2).
2. Os números permitidos são `1` e `2`.
3. Cada linha e coluna deve conter todos os números de `1` a `2` sem repetição.

O objetivo deste programa é:
- Resolver o Sudoku fornecendo uma matriz inicial com valores conhecidos e células vazias representadas por `0`.

---

## Estrutura do Código

O código está organizado em predicados Prolog que implementam as seguintes funcionalidades:

### 1. **Domínio dos Números**
- O predicado `numero/1` define os números possíveis no Sudoku 2x2 (`1` e `2`).

### 2. **Verificação de Unicidade**
- O predicado `todos_unicos/1` verifica se todos os elementos de uma lista são únicos, garantindo que não haja repetições nas linhas ou colunas.

### 3. **Validação da Matriz**
- O predicado `matriz_valida/1` verifica se a matriz respeita as regras do Sudoku:
  - Todas as linhas devem ter números únicos.
  - Todas as colunas devem ter números únicos.

### 4. **Resolução do Sudoku com Contador**
- O predicado principal `resolver_sudoku/2` resolve o Sudoku e retorna:
  - A solução (`MatrizResolvida`).

### 5. **Preenchimento das Células Vazias**
- O predicado `completar_matriz/2` gera todas as combinações possíveis para preencher as células vazias (`0`) com números válidos.

---

## Como Usar

1. Salve o código em um arquivo `.pl`, por exemplo, `sudoku_2x2.pl`.
2. Execute o código no interpretador Prolog:
   ```prolog
     consult('sudoku_2x2.pl')
   ```
3. Faça uma consulta para resolver um Sudoku. Por exemplo:
   ```prolog
   resolver_sudoku([[1, 0], [0, 0]], Solucao, TotalCombinacoes).
   ```
4. O Prolog retornará:
   - `Solucao`: A matriz resolvida.
   - `TotalCombinacoes`: O número total de combinações testadas.

---

## Exemplo de Uso

### Entrada
Suponha que você deseja resolver o seguinte Sudoku 2x2:

```
1 _
_ _
```

A consulta seria:

```prolog
resolver_sudoku([[1, 0], [0, 0]], Solucao).
```

### Saída
O Prolog retornará:

```
Solucao = [[1, 2], [2, 1]],

```

Isso significa que a solução encontrada foi:

```
1 2
2 1
```
