-module(swagger_credit_card_types).

-export([encode/1]).

-export_type([swagger_credit_card_types/0]).

-type swagger_credit_card_types() ::
    #{ 'cardTypes' => list()
     }.

encode(#{ 'cardTypes' := CardTypes
        }) ->
    #{ 'cardTypes' => CardTypes
     }.
