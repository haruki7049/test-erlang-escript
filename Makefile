PROJECT = test_erlang_escript
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

LOCAL_DEPS = server bin

DEPS = cowboy
dep_cowboy_commit = 2.14.2

include erlang.mk
