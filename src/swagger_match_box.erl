-module(swagger_match_box).

-export([encode/1]).

-export_type([swagger_match_box/0]).

-type swagger_match_box() ::
    #{ 'height' => binary(),
       'pageNumber' => binary(),
       'width' => binary(),
       'xPosition' => binary(),
       'yPosition' => binary()
     }.

encode(#{ 'height' := Height,
          'pageNumber' := PageNumber,
          'width' := Width,
          'xPosition' := XPosition,
          'yPosition' := YPosition
        }) ->
    #{ 'height' => Height,
       'pageNumber' => PageNumber,
       'width' => Width,
       'xPosition' => XPosition,
       'yPosition' => YPosition
     }.
