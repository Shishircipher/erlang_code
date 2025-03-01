-module(spawn_ex1).

-export([start/0, say_something/2]).

say_something(What, 0) ->
	done;

%%% compile but compiler throw error - spawn_ex1.erl:5: Warning: variable 'What' is unused
% spawn_ex1.erl:9: Warning: wrong number of arguments in format call
say_something(What, Times) ->
	io:format("~p~n", [What]),
	say_something(What, Times - 1).

start() ->
	spawn(spawn_ex1, say_something, [hello, 3]),
	spawn(spawn_ex1, say_something, [goodbye, 3]).
