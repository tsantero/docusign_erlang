-module(swagger_account_seal_providers).

-export([encode/1]).

-export_type([swagger_account_seal_providers/0]).

-type swagger_account_seal_providers() ::
    #{ 'seals' => list()
     }.

encode(#{ 'seals' := Seals
        }) ->
    #{ 'seals' => Seals
     }.
