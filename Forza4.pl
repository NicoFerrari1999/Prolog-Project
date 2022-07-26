win(Board, Player) :- rowwin(Board, Player).
win(Board, Player) :- colwin(Board, Player).
win(Board, Player) :- diagwin(Board, Player).

% Condizioni di vittoria sulle righe

rowwin(Board, Player) :- Board = [Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _, _, _, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player, _].
rowwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Player, Player, Player, Player].

% Condizioni di vittoria sulle colonne

colwin(Board, Player) :- Board = [Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, _].
colwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player, _, _, _, _, _, Player].

% Condizioni di vittoria sulle diagonali

diagwin(Board, Player) :- Board = [_, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, _, _, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, _, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _, _, Player, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _].
diagwin(Board, Player) :- Board = [Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _].
diagwin(Board, Player) :- Board = [_, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, _].
diagwin(Board, Player) :- Board = [_, _, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player].
diagwin(Board, Player) :- Board = [_, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _, Player, _, _, _, _, _, _].

move(Board, [H|T], ColIndex, Counter, Simbolo, QueueList, NewList, NewBoardInsert) :-
    Counter < (ColIndex-1),
    NewCounter is Counter + 1,
    append(QueueList, [H], NewList1), !,
    move(Board, T, ColIndex, NewCounter, Simbolo, NewList1, NewList, NewBoardInsert), !. 

move(Board, [H|T], ColIndex, Counter, Simbolo, QueueList, NewList, NewBoardInsert) :-
    (H is 0 -> ((ColIndex < 6) -> write('Giocatore '), write(Simbolo), write(' hai fatto una mossa illegale sulla colonna '),
    write(ColIndex), write(', la tua mossa verrà spostata nella colonna alla tua destra'), nl,
    NewColIndex is ColIndex + 1,
	move(Board, [H|T], NewColIndex, Counter, Simbolo, QueueList, NewList, NewBoardInsert) ; 
    write('Giocatore '), write(Simbolo), write(' hai fatto una mossa illegale sulla colonna '),
    write(ColIndex), write(', la tua mossa verrà spostata nella prima colonna'), nl,
    NewColIndex is 1,
    NewCounter is 0,
    append(QueueList, [H], NewQueueList),
	move(Board, NewQueueList, NewColIndex, NewCounter, Simbolo, _, NewList, NewBoardInsert))).    

move(Board, [H|T], ColIndex, Counter, Simbolo, QueueList, NewList, NewBoardInsert) :-
    Counter is (ColIndex-1),
    N is H-6,
    append(QueueList, [N|T], NewList),
    insert(Board, N+(ColIndex-1), 0, Simbolo, _, NewBoardInsert), !. 

insert([H|T], ColIndex, Counter, X, NewList, Newboard) :- 
    Counter < ColIndex,
    Counter1 is Counter + 1,
    append(NewList, [H], NewList1),
    insert(T, ColIndex, Counter1, X, NewList1, Newboard), !.

insert([_|T], ColIndex, Counter, X, NewList, Newboard) :- 
    Counter is ColIndex,
    append(NewList, [X|T], Newboard), !.

display([AA,AB,AC,AD,AE,AF,AG,AH,AI,AJ,AK,AL,AM,AN,AO,AP,AQ,AR,AS,AT,AU,AV,AW,AX,AY,AZ,BA,BB,BC,BD]) :- write([AA,AB,AC,AD,AE,AF]),nl,write([AG,AH,AI,AJ,AK,AL]),
    nl,write([AM,AN,AO,AP,AQ,AR]),nl,write([AS,AT,AU,AV,AW,AX]),nl,write([AY,AZ,BA,BB,BC,BD]),nl,nl.

respond(Board, _, _, _) :- win(Board, o), write('Congratulazioni PC, hai vinto!').
respond(Board, _, _, _) :- win(Board, x), write('Congratulazioni giocatore, hai vinto!').
respond(Board, Newboard, NewList, NewList1) :- random(1,7, Col_Index),
	move(Board, NewList, Col_Index, 0, o, _, NewList1, Newboard).

explain :-
    write('Giochi come X, scegli una colonna da 1 a 6'),
    nl,
    display([b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b]).

playfrom(Board, L) :- 
    read(N),
    move(Board, L, N, 0, x, _, NewList, Newboard),
    display(Newboard),
    respond(Newboard, NewNewboard, NewList, NewList1),
    display(NewNewboard),
    playfrom(NewNewboard, NewList1)

playo :- explain, L = [30,30,30,30,30,30], playfrom([b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b], L).