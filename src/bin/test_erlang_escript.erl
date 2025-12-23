-module(test_erlang_escript).
-export([main/1]).

main([Value]) ->
    I = list_to_integer(Value),
    F = factorial(I),
    io:format("factorial ~w = ~w~n", [I, F]).

factorial(0) -> 1;
factorial(N) ->
    N * factorial(N - 1).
