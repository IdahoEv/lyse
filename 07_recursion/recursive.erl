-module(recursive).
-export([fac/1, fib/1, len/1]).
-export([tail_fac/1]). %, fib/1, len/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0  -> N * fac(N-1).

% Really dumb implementation of fib.
fib(N) when N == 0 -> 1;
fib(N) when N == 1 -> 1;
fib(N) when N > 1  -> fib(N-1) + fib(N-2).

len([])  -> 0;
len([_]) -> 1;
len([_|T]) -> 1 + len(T).


% tail recursive versions
tail_fac(N)      -> tail_fac(N, 1).
tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) -> tail_fac(N-1, Acc * N).



