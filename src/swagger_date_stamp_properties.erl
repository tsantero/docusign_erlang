-module(swagger_date_stamp_properties).

-export([encode/1]).

-export_type([swagger_date_stamp_properties/0]).

-type swagger_date_stamp_properties() ::
    #{ 'dateAreaHeight' => binary(),
       'dateAreaWidth' => binary(),
       'dateAreaX' => binary(),
       'dateAreaY' => binary()
     }.

encode(#{ 'dateAreaHeight' := DateAreaHeight,
          'dateAreaWidth' := DateAreaWidth,
          'dateAreaX' := DateAreaX,
          'dateAreaY' := DateAreaY
        }) ->
    #{ 'dateAreaHeight' => DateAreaHeight,
       'dateAreaWidth' => DateAreaWidth,
       'dateAreaX' => DateAreaX,
       'dateAreaY' => DateAreaY
     }.
