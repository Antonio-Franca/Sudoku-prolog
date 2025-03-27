% Números possíveis no sudoku 2x2
numero(1).
numero(2).

% Verifica se todos os elementos de uma lista são únicos
todos_unicos([]).
todos_unicos([X|Xs]) :-
    %Verifica se X não está na cauda
    \+ member(X, Xs),
    %Verifica o restante da lista recursivamente
    todos_unicos(Xs).

%Verifica se uma matriz 2x2 é válida
matriz_2x2_valida(Matriz) :-
    % Extrair as linhas
    [Linha1, Linha2] = Matriz,

    % Extrair as colunas
    nth1(1, Linha1, C1), % Primeiro elemento da primeira linha
    nth1(1, Linha2, C2), % Primeiro elemento da segunda linha
    Coluna1 = [C1, C2],  % Primeira coluna formada
    
    nth1(2, Linha1, C3), % Segundo elemento da primeira linha
    nth1(2, Linha2, C4), % Segundo elemento da segunda linha
    Coluna2 = [C3, C4],  % Segunda coluna formada

    % Verifica a unicidade nas linhas e nas colunas
    todos_unicos(Linha1),
    todos_unicos(Linha2),
    todos_unicos(Coluna1),
    todos_unicos(Coluna2).

% Preenche uma linha com números possíveis
completar_linha([],[]).
completar_linha([Celula|Resto], [Valor|RestoCompletado]) :-
    (Celula = 0 -> numero(Valor) ; Valor = Celula),
    completar_linha(Resto, RestoCompletado).

% Preenche as células vazias com números possíveis 
completar_matriz([], []). 

completar_matriz([LinhaInicial|RestoInicial], [LinhaCompletada|RestoCompletado]) :- 
    completar_linha(LinhaInicial, LinhaCompletada), 
    completar_matriz(RestoInicial, RestoCompletado).

% Resolvendo o Sudoku 2x2 usando DFS
resolver_sudoku_2x2(MatrizInicial, Matriz_Solucionada) :-
    % Gerar todas as combinações possíveis para preencher as células vazias
    completar_matriz(MatrizInicial, Matriz_Solucionada),
    % Verificar se a matriz gerada é válida
    matriz_2x2_valida(Matriz_Solucionada).