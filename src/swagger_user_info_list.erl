-module(swagger_user_info_list).

-export([encode/1]).

-export_type([swagger_user_info_list/0]).

-type swagger_user_info_list() ::
    #{ 'users' => list()
     }.

encode(#{ 'users' := Users
        }) ->
    #{ 'users' => Users
     }.
