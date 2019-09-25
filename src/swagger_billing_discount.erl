-module(swagger_billing_discount).

-export([encode/1]).

-export_type([swagger_billing_discount/0]).

-type swagger_billing_discount() ::
    #{ 'beginQuantity' => binary(),
       'discount' => binary(),
       'endQuantity' => binary()
     }.

encode(#{ 'beginQuantity' := BeginQuantity,
          'discount' := Discount,
          'endQuantity' := EndQuantity
        }) ->
    #{ 'beginQuantity' => BeginQuantity,
       'discount' => Discount,
       'endQuantity' => EndQuantity
     }.
