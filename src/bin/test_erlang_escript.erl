-module(test_erlang_escript).
-export([main/1]).

main(_Args) ->
    application:ensure_all_started(server_app),
    timer:sleep(infinity).

    %lib:echo().

    %I = list_to_integer(Value),
    %F = factorial(I),
    %io:format("factorial ~w = ~w~n", [I, F]).

%factorial(0) -> 1;
%factorial(N) ->
%    N * factorial(N - 1).
