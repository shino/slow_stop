slow_stop
=====

An OTP application to demonstrate slow stop operation.

Build
-----

    $ rebar3 as dev release

Run
-----

     $ _build/dev/rel/slow_stop/bin/slow_stop daemon


Stop
-----

     $ bash -x _build/dev/rel/slow_stop/bin/slow_stop stop


From some final lines of the output, stop takes almost 5 seconds:

```
+ erl_rpc init stop
+ kill -s 0 103505
+ sleep 1
+ kill -s 0 103505
+ sleep 1
+ kill -s 0 103505
+ sleep 1
+ kill -s 0 103505
+ sleep 1
+ kill -s 0 103505
+ erl_rpc erlang is_alive
+ relx_run_hooks ''
+ HOOKS=
+ exit 0
```
