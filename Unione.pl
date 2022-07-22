/*
*   Gioco Forza 4
*/

win(Board, Player) :- rowwin(Board, Player).
win(Board, Player) :- colwin(Board, Player).
win(Board, Player) :- diagwin(Board, Player).

validResp(1).
validResp(2).
posResp(1).

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

respond(Board, _, _, _) :- win(Board, o), write('Congratulazioni PC, hai vinto!'), nl, 
    write('Vuoi giocare ancora? (1 = Si | 2 = No)'), nl,
	read(Risp),
    (validResp(Risp) -> (posResp(Risp) ->  (nl, play) ; 
    (nl, write('Arrivederci e grazie per aver giocato!'))) ;
    write('Input non valido, Arrivederci e grazie per aver giocato!')).

respond(Board, _, _, _) :- win(Board, x), write('Congratulazioni giocatore, hai vinto!'), nl, 
    write('Vuoi giocare ancora? (1 = Si | 2 = No)'), nl,
	read(Risp),
    (validResp(Risp) -> (posResp(Risp) ->  (nl, play) ; 
    (nl, write('Arrivederci e grazie per aver giocato!'))) ;
    write('Input non valido, Arrivederci e grazie per aver giocato!')).

respond(Board, _, _, _) :- not(member(b, Board)), !, write('Pareggio!'), nl.
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
    playfrom(NewNewboard, NewList1).

play :- explain, L = [30,30,30,30,30,30], playfrom([b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b], L).

/*
*   Chatbot emergenza COVID-19
*/

symptom('febbre').
symptom('tosse').
symptom('stanchezza').
symptom('dolori').
symptom('dolore').
symptom('mal di testa').
symptom('perdita di gusto').
symptom('perdita di olfatto').
symptom('difficoltà nel respirare').
symptom('dolori al petto').

valid_response('si').
valid_response('Si').
valid_response('no').
valid_response('No').

positive_response('Si').
positive_response('si').

valid_menu_option(1).
valid_menu_option(2).
valid_menu_option(3).
valid_menu_option(4).
valid_menu_option(5).

switch(X, [Val:Goal|Cases]) :-
    ( X=Val ->
        call(Goal)
    ;
        switch(X, Cases)
    ).

display_menu :-
    writeln("Cosa vuoi fare?"), nl,
    writeln("Digita un numero della lista:"), nl,
    writeln("1. Avvisi sulla quarantena"), nl,
    writeln("2. Inserisci un sintomo e scopri se hai contratto il COVID-19"), nl,
    writeln("3. Dovrei fare un tampone?"), nl,
    writeln("4. Informazioni sui vaccini"), nl,
    writeln("5. Esci"), nl,
    catch(
        (
            read(Menu_input),
            (
                valid_menu_option(Menu_input)
                -> (
                switch(Menu_input, [
                        1 : (
                            covid_quarantine_advice,
                            display_menu
                        ),
                        2 : (
                            check_if_covid,
                            display_menu
                        ),
                        3 : (
                            covid_testing_advice,
                            display_menu
                        ),
                        4 : (
                            covid_vaccine_info,
                            display_menu
                        ),
                        5 : (
                            nl,
                            writeln("Grazie per avermi usato e ricorda: pratica il distanziamento sociale e indossa la mascherina!"), nl,
                            writeln("*********************************************************************************************************")
                        )
                    ])
                )
                ; (
                  	nl,
                    writeln("Non ho capito la tua scelta, perfavore riprova..."), nl,
                    display_menu
                )
            )
        ),
        _,
        (
        	nl,
            writeln("Non ho capito la tua scelta, perfavore riprova..."),
            display_menu
        )
    ).

check_if_covid :-
    nl,
    writeln("Digita un sintomo..."), nl,
    catch(
        (
            read(Input),
            (
                symptom(Input)
                -> (
                    nl,
                    writeln("In accordo con chi di dovere potresti risultare positivo al COVID-19."), nl,
                    writeln("Dovresti metterti in auto-quarantena immediatamente."), nl,
                    writeln("Ti consiglio di digitare 1 per vedere se hai altri sintomi. Altrimenti digita 2 per tornare al menù principale."), nl,
                    read(NextInput),
                    (
                        NextInput = 1
                        -> check_if_covid
                        ; (
                          	nl,
                            writeln("Ritorno al menù principale..."), nl,
                            writeln("*********************************************************************************************************")
                        )
                    )
                )
                ; (
                   nl,
                    writeln("Hmm..."),
                    writeln("Questo non risulta essere uno dei sintomi da COVID-19."), nl,
                    writeln("Se hai commesso un errore di battitura o vuoi provare con altri sintomi digita 1, altrimenti digita 2 per tornare al menù prinicpale."), nl,
                    read(NextInput),
                    (
                        NextInput = 1
                        -> check_if_covid
                        ; (
                          	nl,
                            writeln("Ritorno al menù principale..."), nl,
                         	writeln("*********************************************************************************************************")
                        )
                    )
                )
            )
        ),
        _,
        (
        	nl,
            writeln("Aspetta... stai tentando di scrivere qualcosa che ha degli spazi nel suo interno!"), nl,
            writeln("Puoi scrivere il tuo sintomo con gli apici (\') attorno al testo? Come in questo caso: \'naso che cola\'"), nl,
            writeln("Se non dovessere essere un problema di spazi allora non riesco a capire quello che mi stai dicendo."),
            check_if_covid
        )
    ).

covid_quarantine_advice :-
    nl,
    writeln("*********************************************************************************************************"),
    writeln("Il governo italiano ha recentemente rilasciato informazioni importanti sulla quarantena per il COVID-19."),
    writeln("Recentemente sei stato all'estero?"), nl, 
    catch(
        (
            read(Travel),
            (
                valid_response(Travel)
                -> (
                    positive_response(Travel)
                    -> (
                       	 nl,
                       	 writeln("*********************************************************************************************************"), nl, 
                         writeln("In Italia vi è l'obbligo di mettersi in quarantena per:"), nl, nl,
    					 writeln("- almeno 10 giorni se, a seguito di un tampone molecolare positivo o comparsa dei sintomi"),
    					 writeln("- almeno 7 giorni dal tampone positivo se si è ricevuta la dose di richiamo o si è completato il ciclo vaccinale da meno di 120 giorni"), nl,
                         writeln("La quarantena termina solo dopo un tampone negativo. "), nl,
                         writeln("*********************************************************************************************************")
                    )
                    ; (
                      	nl,
                        writeln("Continua a seguire le direttive per minimizzare il rischio di infezioni!"),
                        writeln("Ritorno al menù principale..."), nl,
                      	writeln("*********************************************************************************************************")
                    )
                )
                ; (
                  	nl,
                    writeln("Non ho capito la tua risposta, perfavore riprova..."),
                    covid_quarantine_advice
                )
            )
        ),
        _
        ,
        (
            writeln("Non ho capito la tua risposta, perfavore riprova..."),
            covid_quarantine_advice
        )
    ).
    

covid_testing_advice :-
    writeln("Sei indeciso se fare un tampone oppure no? Non preoccuparti, ti aiuto io a decidere!"), nl,
    writeln("Le persone che hanno una sintomatologia simile a quella del COVID-19 dovrebbero isolarsi!"), nl,
    writeln("La tua sintomatologia è tipica del COVID-19? (Si/No)"), nl,
    catch(
        (
            read(Symptom),
            (
                valid_response(Symptom)
                -> (
                    positive_response(Symptom)
                    -> (
                        nl,
                        writeln("Dovresti fare un tampone molecolare immediatamente e ricorda, mantieni il distanziamento e metti la mascherina!"), nl,
                        writeln("Ritorno al menù principale..."), nl,
                        writeln("*********************************************************************************************************"), nl
                    )
                    ; (
                      	nl,
                        writeln("Sei stato a contatto con una persona che mostrava segni di infezione da COVID-19? (Si/No)"), nl,
                        read(Contact),
                        (
                            positive_response(Contact)
                            -> (
                               	nl,
                                writeln("Dovresti fare un tampone molecolare e metterti in isolamento il prima possibile!"),
                                writeln("Ritorno al menù principale..."), nl,
                        		writeln("*********************************************************************************************************"), nl
                            )
                            ; (
                              	nl,
                                writeln("Sembra tu non abbia una seria necessità di fare il tampone."), nl,
                                writeln("Tuttavia, se effettuare un tampone ti renderebbe più tranquillo allora fallo!"), nl,
                                writeln("Ritorno al menù principale..."), nl,
                        		writeln("*********************************************************************************************************"), nl
                            )
                        )
                    )
                )
                ; (
                  	nl,
                    writeln("Non ho capito la tua risposta, perfavore riprova...."), nl,
                    covid_testing_advice
                )
            )
        ),
        _,
        (
        	nl,
            writeln("Non ho capito la tua risposta, perfavore riprova...."), nl,
            covid_testing_advice   
        )
    ).

covid_vaccine_info :-
    nl,
    writeln("Per qualunque informazione riguardo la prenotazione dei vaccini visita il seguente link: https://prenotazionevaccinicovid.regione.lombardia.it"), nl,
    writeln("*********************************************************************************************************"), nl.

run_bot :-
    nl,
    writeln("****************************************************************************************"),
    writeln("******* Benvenuti nella chatbot per la gestione crisi da COVID-19 *******"),
    writeln("****************************************************************************************"),
    nl,
    display_menu.