-module(test_erlang_escript).
-export([main/1]).


main(_Args) ->
    {ok, Pid} = application:ensure_all_started(server),
    io:format("Started applications: ~p~n", [Pid]),
    timer:sleep(infinity).
