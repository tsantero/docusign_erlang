-module(swagger_signing_group_users).

-export([encode/1]).

-export_type([swagger_signing_group_users/0]).

-type swagger_signing_group_users() ::
    #{ 'users' => list()
     }.

encode(#{ 'users' := Users
        }) ->
    #{ 'users' => Users
     }.
