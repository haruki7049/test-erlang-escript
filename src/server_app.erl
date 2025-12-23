%% @private
-module(server_app).
-behaviour(application).

%% API.
-export([start/2]).
-export([stop/1]).

%% API.


start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([{'_', [{"/", toppage, []}]}]),
    {ok, _} = cowboy:start_clear(http,
                                 [{port, 8080}],
                                 #{
                                   env => #{dispatch => Dispatch}
                                  }),
    hello_world_sup:start_link().


stop(_State) ->
    ok = cowboy:stop_listener(http).
