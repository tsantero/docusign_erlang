-module(swagger_payment_line_item).

-export([encode/1]).

-export_type([swagger_payment_line_item/0]).

-type swagger_payment_line_item() ::
    #{ 'amountReference' => binary(),
       'description' => binary(),
       'itemCode' => binary(),
       'name' => binary()
     }.

encode(#{ 'amountReference' := AmountReference,
          'description' := Description,
          'itemCode' := ItemCode,
          'name' := Name
        }) ->
    #{ 'amountReference' => AmountReference,
       'description' => Description,
       'itemCode' => ItemCode,
       'name' => Name
     }.
