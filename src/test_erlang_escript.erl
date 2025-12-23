-module(test_erlang_escript).
-export([main/1]).


main(_Args) ->
    {ok, _} = application:ensure_all_started(cowboy),
    {ok, _Started} = application:ensure_all_started(server),
    io:format("Server started at http://localhost:8080~n", []),

    timer:sleep(infinity).
