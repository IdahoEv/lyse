-module(recursive).
-export([fac/1, fib/1, len/1]).
-export([tail_fac/1, tail_len/1, tail_fib/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0  -> N * fac(N-1).

% Really dumb implementation of fib.
fib(N) when N == 0 -> 1;
fib(N) when N == 1 -> 1;
fib(N) when N > 1  -> 
  A = fib(N-1),
  B = fib(N-2),
  %io:format("N = ~p, A = ~p, B = ~p~n",[N, A, B]),
  A + B.

len([])  -> 0;
len([_]) -> 1;
len([_|T]) -> 1 + len(T).


% tail recursive versions
tail_fac(N)      -> tail_fac(N, 1).
tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) -> tail_fac(N-1, Acc * N).

tail_len(Arr)        -> tail_len(Arr, 0).
tail_len([], Acc)    -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc + 1).

% Smarter implementation of fib. The -1 is necessary because the base case
% here is the second fibonnaci number, not the first.  If I pass (N, 0, 0)
% the sequence will never increment.
tail_fib(N)             -> tail_fib(N-1, 0, 1).
tail_fib(0, Acc1, Acc2) -> 
  %io:format("N = ~p, Acc1 = ~p, Acc2 = ~p~n", [0, Acc1, Acc2]),
  Acc1 + Acc2;
tail_fib(N, Acc1, Acc2) ->  
  %io:format("N = ~p, Acc1 = ~p, Acc2 = ~p~n", [N, Acc1, Acc2]),
  tail_fib(N-1, Acc2, Acc1 + Acc2).

