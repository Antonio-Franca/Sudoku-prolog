# Sudoku 2x2 e 3x3 em Prolog


Este projeto implementa um resolvedor de Sudoku usando Prolog. O objetivo é encontrar todas as soluções válidas para uma grade 2x2 e 3x3.

O programa utiliza busca em profundidade (DFS) com backtracking para encontrar soluções válidas 

### Sudoku 2x2
O Sudoku 2x2 é uma versão simplificada do Sudoku tradicional, onde:

1. A grade é composta por 4 células (2x2).
2. Os números permitidos são `1` e `2`.
3. Cada linha e coluna deve conter todos os números de `1` a `2` sem repetição.

Exemplo de um Sudoku 2x2 inicial:
```
1 _
_ _
```

### Sudoku 3x3
O Sudoku 3x3 é uma extensão lógica do Sudoku 2x2, onde:

1. A grade é composta por 9 células (3x3).
2. Os números permitidos são `1`, `2` e `3`.
3. Cada linha, coluna e subgrade 3x3 deve conter todos os números de `1` a `3` sem repetição.

Exemplo de um Sudoku 3x3 inicial:
```
1 _ _
_ _ _
_ _ _
```

---

## Estrutura do Código

O código está organizado em predicados Prolog que implementam as seguintes funcionalidades:

### 1. **Domínio dos Números**
- O predicado `numero/1` define os números possíveis no Sudoku (`1` e `2` para 2x2, ou `1`, `2` e `3` para 3x3).

### 2. **Verificação de Unicidade**
- O predicado `todos_unicos/1` verifica se todos os elementos de uma lista são únicos, garantindo que não haja repetições nas linhas ou colunas.

### 3. **Validação da Matriz**
- O predicado `matriz_valida/1` verifica se a matriz respeita as regras do Sudoku:
  - Todas as linhas devem ter números únicos.
  - Todas as colunas devem ter números únicos.
  - Para o Sudoku 3x3, também verifica unicidade na subgrade 3x3.

### 4. **Resolução do Sudoku**
- O predicado principal `resolver_sudoku/2` resolve o Sudoku e retorna:
  - A solução (`MatrizResolvida`).
- Ele utiliza backtracking para gerar combinações válidas até encontrar uma solução.

### 5. **Preenchimento das Células Vazias**
- O predicado `completar_matriz/2` gera todas as combinações possíveis para preencher as células vazias (`0`) com números válidos.
- O predicado `completar_linha/2` substitui cada célula vazia por números permitidos.

---

## Como Usar

2. Execute o código no interpretador Prolog:
   ```prolog
   consult('sudoku_2x2.pl')
   ```
3. Faça uma consulta para resolver um Sudoku. Por exemplo:
   ```prolog
   resolver_sudoku([[1, 0], [0, 0]], Solucao).
   ```
4. O Prolog retornará:
   - `Solucao`: A matriz resolvida.
---

## Exemplos de Uso

### Sudoku 2x2
**Entrada:**
```
1 _
_ _
```

**Consulta:**
```prolog
resolver_sudoku_2x2([[1, 0], [0, 0]], Solucao).
```

**Saída:**
```
Solucao = [[1, 2], [2, 1]]
```

Isso significa que a solução encontrada foi:
```
1 2
2 1
```

### Sudoku 3x3
**Entrada:**
```
1 _ _
_ _ _
_ _ _
```

**Consulta:**
```prolog
resolver_sudoku_3x3([[1, 0, 0], [0, 0, 0], [0, 0, 0]], Solucao).
```

**Saída:**
```
Solucao = [[1, 2, 3], [2, 3, 1], [3, 1, 2]]
```

Isso significa que a solução encontrada foi:
```
1 2 3
2 3 1
3 1 2
```

---
