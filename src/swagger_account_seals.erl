-module(swagger_account_seals).

-export([encode/1]).

-export_type([swagger_account_seals/0]).

-type swagger_account_seals() ::
    #{ 'seals' => list()
     }.

encode(#{ 'seals' := Seals
        }) ->
    #{ 'seals' => Seals
     }.
