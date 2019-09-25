-module(swagger_money).

-export([encode/1]).

-export_type([swagger_money/0]).

-type swagger_money() ::
    #{ 'amountInBaseUnit' => binary(),
       'currency' => binary(),
       'displayAmount' => binary()
     }.

encode(#{ 'amountInBaseUnit' := AmountInBaseUnit,
          'currency' := Currency,
          'displayAmount' := DisplayAmount
        }) ->
    #{ 'amountInBaseUnit' => AmountInBaseUnit,
       'currency' => Currency,
       'displayAmount' => DisplayAmount
     }.
