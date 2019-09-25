-module(swagger_poly_line).

-export([encode/1]).

-export_type([swagger_poly_line/0]).

-type swagger_poly_line() ::
    #{ 'x1' => binary(),
       'x2' => binary(),
       'y1' => binary(),
       'y2' => binary()
     }.

encode(#{ 'x1' := X1,
          'x2' := X2,
          'y1' := Y1,
          'y2' := Y2
        }) ->
    #{ 'x1' => X1,
       'x2' => X2,
       'y1' => Y1,
       'y2' => Y2
     }.
