fibo(0,1).
fibo(1,1).
fibo(N, Z) :- 
        N > 1,
        N1 is N - 1,
        N2 is N - 2,
        fibo(N1, X),
        fibo(N2, Y),
        Z is X + Y.


divisible(X, N) :-
    N > 1,
    X rem N =:= 0.

divisible(X, N) :-
    N > 1,
    N1 is N - 1,
    divisible(X, N1).

isPrime(X) :-
    X1 is X - 1,
    \+ divisible(X, X1).
