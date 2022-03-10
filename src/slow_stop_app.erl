%%%-------------------------------------------------------------------
%% @doc slow_stop public API
%% @end
%%%-------------------------------------------------------------------

-module(slow_stop_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    slow_stop_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
