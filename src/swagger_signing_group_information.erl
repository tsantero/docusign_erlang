-module(swagger_signing_group_information).

-export([encode/1]).

-export_type([swagger_signing_group_information/0]).

-type swagger_signing_group_information() ::
    #{ 'groups' => list()
     }.

encode(#{ 'groups' := Groups
        }) ->
    #{ 'groups' => Groups
     }.
