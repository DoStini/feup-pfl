print_n(_S, 0).

print_n(S, N) :- 
    N > 0,
    N1 is N - 1,
    put_char(S),
    print_n(S, N1).


% print_n(_, 0).
% print_n(S, N) :- N1 is N-1, write(S), print_n(S, N1). 

print_line("").

print_line([A|R]) :-
    put_code(A),
    print_line(R).

print_padding(Padding) :-
    Padding > 0,
    P1 is Padding - 1,
    print_line(" "),
    print_padding(P1).

print_padding(_X) .

print_text(Text, Symbol, Padding) :-
    put_char(Symbol),
    print_n(' ', Padding),
    print_line(Text),
    print_n(' ', Padding),
    put_char(Symbol).

print_empty(Symbol, SmallSum):-
    print_n(Symbol, 1),
    print_n(' ', SmallSum),
    print_n(Symbol, 1).

print_banner(Text, Symbol, Padding) :-
    length(Text, L),
    SmallSum is (Padding * 2) + L,
    Sum is SmallSum + 2,
    print_n(Symbol, Sum),
    nl,
    print_empty(Symbol, SmallSum),
    nl,
    print_text(Text, Symbol, Padding),
    nl,
    print_empty(Symbol, SmallSum),
    nl,
    print_n(Symbol, Sum).

