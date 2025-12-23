-module(lib).
-export([echo/0]).


echo() ->
    io:format("HOGEHOGE~n").
