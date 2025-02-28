-module(list_ex1).
-export([list_length/1]).

list_length([]) -> 
	0;
% This is not tail recursive, there is a better way to write this function. list_ex1.erl:6: Warning: variable 'First' is unused
list_length([First | Rest]) ->
	1 + list_length(Rest).

