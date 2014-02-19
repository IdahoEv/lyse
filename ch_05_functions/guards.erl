-module(guards).
-compile(export_all).

old_enough_to_drive(X) when X >= 16 ->
  true;
old_enough_to_drive(X) when X > 0 ->
  false;
old_enough_to_drive(X) when X < 0 ->
  io:format("Stop feeding me wrong data!~n"),
  false.
