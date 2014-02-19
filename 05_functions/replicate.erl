-module(replicate).
-export([duplicate/2, tail_dup/2]).

duplicate(N,Object) when N > 1  ->
  [Object|duplicate(N-1,Object)];
duplicate(1,Object) ->
  [Object].
  
tail_dup(1, Thing, Acc ) ->
  [ Thing | Acc ];
tail_dup(N, Thing, Acc) when N > 1 ->
  tail_dup(N-1, Thing, [ Thing | Acc ]).
tail_dup(N, Thing)  ->
  tail_dup(N, Thing, []).

