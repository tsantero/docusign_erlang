-module(swagger_seat_discount).

-export([encode/1]).

-export_type([swagger_seat_discount/0]).

-type swagger_seat_discount() ::
    #{ 'beginSeatCount' => binary(),
       'discountPercent' => binary(),
       'endSeatCount' => binary()
     }.

encode(#{ 'beginSeatCount' := BeginSeatCount,
          'discountPercent' := DiscountPercent,
          'endSeatCount' := EndSeatCount
        }) ->
    #{ 'beginSeatCount' => BeginSeatCount,
       'discountPercent' => DiscountPercent,
       'endSeatCount' => EndSeatCount
     }.
