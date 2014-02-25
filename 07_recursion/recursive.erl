-module(recursive).
-export([fac/1, fib/1, len/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0  -> N * fac(N-1).

fib(N) when N == 0 -> 1;
fib(N) when N == 1 -> 1;
fib(N) when N > 1  -> fib(N-1) + fib(N-2).

len([])  -> 0;
len([_]) -> 1;
len([_|T]) -> 1 + len(T).


