-module(swagger_currency_plan_price).

-export([encode/1]).

-export_type([swagger_currency_plan_price/0]).

-type swagger_currency_plan_price() ::
    #{ 'currencyCode' => binary(),
       'currencySymbol' => binary(),
       'perSeatPrice' => binary(),
       'supportedCardTypes' => swagger_credit_card_types:swagger_credit_card_types(),
       'supportIncidentFee' => binary(),
       'supportPlanFee' => binary()
     }.

encode(#{ 'currencyCode' := CurrencyCode,
          'currencySymbol' := CurrencySymbol,
          'perSeatPrice' := PerSeatPrice,
          'supportedCardTypes' := SupportedCardTypes,
          'supportIncidentFee' := SupportIncidentFee,
          'supportPlanFee' := SupportPlanFee
        }) ->
    #{ 'currencyCode' => CurrencyCode,
       'currencySymbol' => CurrencySymbol,
       'perSeatPrice' => PerSeatPrice,
       'supportedCardTypes' => SupportedCardTypes,
       'supportIncidentFee' => SupportIncidentFee,
       'supportPlanFee' => SupportPlanFee
     }.
