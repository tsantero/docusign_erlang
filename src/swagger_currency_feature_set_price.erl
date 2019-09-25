-module(swagger_currency_feature_set_price).

-export([encode/1]).

-export_type([swagger_currency_feature_set_price/0]).

-type swagger_currency_feature_set_price() ::
    #{ 'currencyCode' => binary(),
       'currencySymbol' => binary(),
       'envelopeFee' => binary(),
       'fixedFee' => binary(),
       'seatFee' => binary()
     }.

encode(#{ 'currencyCode' := CurrencyCode,
          'currencySymbol' := CurrencySymbol,
          'envelopeFee' := EnvelopeFee,
          'fixedFee' := FixedFee,
          'seatFee' := SeatFee
        }) ->
    #{ 'currencyCode' => CurrencyCode,
       'currencySymbol' => CurrencySymbol,
       'envelopeFee' => EnvelopeFee,
       'fixedFee' => FixedFee,
       'seatFee' => SeatFee
     }.
