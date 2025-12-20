-module(test_erlang_escript).
-export([main/1]).

%% Entry point for the escript
main(Args) ->
    io:format("Hello from escript! Args: ~p~n", [Args]),
    erlang:halt(0).
