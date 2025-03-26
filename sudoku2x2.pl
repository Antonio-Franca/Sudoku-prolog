% Definir o domínio dos números possíveis (1 e 2)
sudoku_2x2(Grid) :-
    % Grid é uma lista de listas representando a grade 2x2
    Grid = [[A1, A2], [B1, B2]],

    % Cada célula pode ser 1 ou 2
    domain([A1, A2, B1, B2], 1, 2),

    % Restrições das linhas (números únicos em cada linha)
    all_different([A1, A2]),
    all_different([B1, B2]),

    % Restrições das colunas (números únicos em cada coluna)
    all_different([A1, B1]),
    all_different([A2, B2]),

    % Resolver o problema
    labeling([], [A1, A2, B1, B2]).