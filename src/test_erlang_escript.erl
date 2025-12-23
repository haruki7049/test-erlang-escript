-module(test_erlang_escript).
-export([main/1]).

main(_Args) ->
    {ok, _} = application:ensure_all_started(cowboy),
    {ok, Pid} = application:ensure_all_started(server),
    io:format("Started: ~w~n", [Pid]),

    timer:sleep(infinity).
