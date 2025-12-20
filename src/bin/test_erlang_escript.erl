-module(test_erlang_escript).
-export([main/1]).

%% Entry point for the escript
main(_Args) ->
    application:start(server),
    timer:sleep(infinity).
