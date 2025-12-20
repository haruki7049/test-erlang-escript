-module(test_erlang_escript).
-export([main/1]).

%% Entry point for the escript
main(_Args) ->
    {ok, _} = application:ensure_all_started(test_erlang_escript),
    timer:sleep(infinity).
