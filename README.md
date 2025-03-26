# Sudoku 2x2 em Prolog

Este projeto implementa um resolvedor de Sudoku 2x2 usando Prolog. O objetivo é encontrar todas as soluções válidas para uma grade 2x2, respeitando as regras clássicas do Sudoku:

1. Cada linha deve conter números únicos (1 e 2).
2. Cada coluna deve conter números únicos (1 e 2).

## Estrutura do Código

- **Grade**: Representada como uma lista de listas (`[[A1, A2], [B1, B2]]`), onde cada variável representa uma célula.
- **Domínio**: As variáveis podem assumir os valores 1 ou 2.
- **Restrições**:
  - `all_different/1` garante que números em linhas e colunas sejam únicos.
- **Resolução**: O predicado `labeling/2` atribui valores às variáveis respeitando as restrições.

## Como Usar

1. Execute o programa em um interpretador Prolog.
2. Para resolver um Sudoku vazio:
   ```prolog
   ?- sudoku_2x2(Grid).
   ```
   Isso retorna todas as soluções possíveis para o Sudoku 2x2.
3. Para incluir dicas iniciais, adicione restrições antes de `labeling/2`. Por exemplo:
   ```prolog
   A1 = 1, B2 = 2.
   ```

## Exemplo de Saída

Para um Sudoku vazio, o programa retorna:
```prolog
Grid = [[1, 2], [2, 1]] ;
Grid = [[2, 1], [1, 2]].
```

## Observações

- O código pode ser adaptado para grades maiores ou problemas mais complexos.
- Restrições adicionais podem ser incluídas para representar grades parcialmente preenchidas.

---
