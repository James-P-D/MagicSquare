% consult('C:\\Users\\jdorr\\OneDrive\\Desktop\\Dev\\MagicSquare\\src\\magic_square.pl').
% display_magic_square([[6,_,_],[_,5,_],[8,_,_]]).
% display_magic_square(X).

magic_square(Board) :-
    Board = [[A, B, C],
             [D, E, F],
             [G, H, I]],
             
    Numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9],
    
    % All elements in the matrix are distinct
    permutation(Numbers, [A, B, C, D, E, F, G, H, I]),
    
    % Collect the row, column and diagonal sums
    Row1 is A + B + C,
    Row2 is D + E + F,
    Row3 is G + H + I,
    Col1 is A + D + G,
    Col2 is B + E + H,
    Col3 is C + F + I,
    Diagonal1 is A + E + I,
    Diagonal2 is C + E + G,
    
    % Check all the sums are equal
    Row1 = Row2,
    Row2 = Row3,
    Col1 = Col2,
    Col2 = Col3,
    Diagonal1 = Diagonal2.
    
display_magic_square([[A, B, C], [D, E, F], [G, H, I]]) :-
    magic_square([[A, B, C], [D, E, F], [G, H, I]]),
    nl,
    format(' ~d | ~d | ~d', [A, B, C]),
    nl,
    format('---+---+---'),
    nl,
    format(' ~d | ~d | ~d', [D, E, F]),
    nl,
    format('---+---+---'),
    nl,
    format(' ~d | ~d | ~d', [G, H, I]),
    nl.