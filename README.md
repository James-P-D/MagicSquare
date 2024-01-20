# MagicSquare
Magic Square solver in Prolog

![Screenshot](https://github.com/James-P-D/MagicSquare/blob/main/screenshot.gif)

## Introduction

The [Magic Square](https://en.wikipedia.org/wiki/Magic_square) is a simple mathematical puzzle whereby the numbers `1` to `9` must be placed on a `3x3` board such that each row, column and diagonal add up to `15`.

So for example, given the following partial board...

```
 6 |   |   
---+---+---
   | 5 |   
---+---+---
 8 |   |   
```

...one possible solution is...

```
 6 | 7 | 2
---+---+---
 1 | 5 | 9
---+---+---
 8 | 3 | 4
```

...since summing the top row (`6+7+2`) is `15`, summing the left-most column (`6+1+8`) is `15`, and so on.

## Running

The program was tested using on [SWI-Prolog](https://www.swi-prolog.org/). To load the script:

```
consult('C:\\Users\\jdorr\\OneDrive\\Desktop\\Dev\\MagicSquare\\src\\magic_square.pl').
```

We can solve our example above with:

```
?- display_magic_square([[6,_,_],[_,5,_],[8,_,_]]).

 6 | 7 | 2
---+---+---
 1 | 5 | 9
---+---+---
 8 | 3 | 4
true;
false
```

We can also find all possible solutions for an empty board:

```
5 ?- display_magic_square(X).

 2 | 7 | 6
---+---+---
 9 | 5 | 1
---+---+---
 4 | 3 | 8
X = [[2, 7, 6], [9, 5, 1], [4, 3, 8]] ;

 2 | 9 | 4
---+---+---
 7 | 5 | 3
---+---+---
 6 | 1 | 8
X = [[2, 9, 4], [7, 5, 3], [6, 1, 8]] ;

 4 | 3 | 8
---+---+---
 9 | 5 | 1
---+---+---
 2 | 7 | 6
X = [[4, 3, 8], [9, 5, 1], [2, 7, 6]] ;

 4 | 9 | 2
---+---+---
 3 | 5 | 7
---+---+---
 8 | 1 | 6
X = [[4, 9, 2], [3, 5, 7], [8, 1, 6]] ;

 6 | 1 | 8
---+---+---
 7 | 5 | 3
---+---+---
 2 | 9 | 4
X = [[6, 1, 8], [7, 5, 3], [2, 9, 4]] ;

 6 | 7 | 2
---+---+---
 1 | 5 | 9
---+---+---
 8 | 3 | 4
X = [[6, 7, 2], [1, 5, 9], [8, 3, 4]] ;

 8 | 1 | 6
---+---+---
 3 | 5 | 7
---+---+---
 4 | 9 | 2
X = [[8, 1, 6], [3, 5, 7], [4, 9, 2]] ;

 8 | 3 | 4
---+---+---
 1 | 5 | 9
---+---+---
 6 | 7 | 2
X = [[8, 3, 4], [1, 5, 9], [6, 7, 2]] ;
false.
```