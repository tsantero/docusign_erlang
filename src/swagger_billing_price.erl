-module(swagger_billing_price).

-export([encode/1]).

-export_type([swagger_billing_price/0]).

-type swagger_billing_price() ::
    #{ 'beginQuantity' => binary(),
       'endQuantity' => binary(),
       'unitPrice' => binary()
     }.

encode(#{ 'beginQuantity' := BeginQuantity,
          'endQuantity' := EndQuantity,
          'unitPrice' := UnitPrice
        }) ->
    #{ 'beginQuantity' => BeginQuantity,
       'endQuantity' => EndQuantity,
       'unitPrice' => UnitPrice
     }.
