-module(swagger_new_users_definition).

-export([encode/1]).

-export_type([swagger_new_users_definition/0]).

-type swagger_new_users_definition() ::
    #{ 'newUsers' => list()
     }.

encode(#{ 'newUsers' := NewUsers
        }) ->
    #{ 'newUsers' => NewUsers
     }.
