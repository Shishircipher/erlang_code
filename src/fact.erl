-module(fact).
-export([fac/1]).
%%% Variables must start with a capital letter. Examples of variables are Number, ShoeSize, and Age.
fac(1) ->
	1;
fac(N) ->
	N * fac(N - 1).
