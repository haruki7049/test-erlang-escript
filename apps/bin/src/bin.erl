-module(bin).
-export([main/1]).


main(_Args) ->
    {ok, Pid} = application:ensure_all_started(server),
    io:format("Started: ~w~n", [Pid]),
    timer:sleep(infinity).
