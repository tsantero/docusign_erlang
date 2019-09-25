-module(swagger_graphics_context).

-export([encode/1]).

-export_type([swagger_graphics_context/0]).

-type swagger_graphics_context() ::
    #{ 'fillColor' => binary(),
       'lineColor' => binary(),
       'lineWeight' => binary()
     }.

encode(#{ 'fillColor' := FillColor,
          'lineColor' := LineColor,
          'lineWeight' := LineWeight
        }) ->
    #{ 'fillColor' => FillColor,
       'lineColor' => LineColor,
       'lineWeight' => LineWeight
     }.
