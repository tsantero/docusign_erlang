-module(swagger_new_users_summary).

-export([encode/1]).

-export_type([swagger_new_users_summary/0]).

-type swagger_new_users_summary() ::
    #{ 'newUsers' => list()
     }.

encode(#{ 'newUsers' := NewUsers
        }) ->
    #{ 'newUsers' => NewUsers
     }.
