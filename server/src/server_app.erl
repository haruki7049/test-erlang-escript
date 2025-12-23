-module(server_app).
-behaviour(application).

-export([start/2, stop/1]).


start(_StartType, _StartArgs) ->
    application:start(ranch),
    application:start(cowboy),

    %% Define routes
    Dispatch = cowboy_router:compile([{'_', [{"/", hello_handler, []}]}]),

    %% Start Cowboy clear listener (HTTP)
    %% Explicitly check the result of cowboy start
    case cowboy:start_clear(http,
                            [{port, 8080}],
                            #{env => #{dispatch => Dispatch}}) of
        {ok, _} ->
            io:format("Cowboy started on port 8080~n"),  %% Added for debug
            server_sup:start_link();
        {error, Reason} ->
            io:format("Failed to start Cowboy: ~p~n", [Reason]),  %% Added for debug
            {error, Reason}
    end.


stop(_State) ->
    ok = cowboy:stop_listener(http).
