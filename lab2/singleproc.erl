-module(singleproc).
-export([do/1]).

do({output , E}) ->
	io:format("~~~p~n",[E]);
do({input,E}) ->
	io:format("~p~n",[E]);
do([]) ->
	ok;
do([E | MoreEs]) ->
	do(E),
	do(MoreEs).
