%%% Atom is another data type in Erlang. Atoms start with a small letter (see Atom), for example, charles, centimeter, and inch. Atoms are simply names, nothing else. They are not like variables, which can have a value.
-module(atom_ex1).
-export([convert/2]).

convert(M, inch) -> 
	M / 2.54;

convert(N, centimeter) ->
	N * 2.54.
