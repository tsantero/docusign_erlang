-module(swagger_smart_section_anchor_position).

-export([encode/1]).

-export_type([swagger_smart_section_anchor_position/0]).

-type swagger_smart_section_anchor_position() ::
    #{ 'pageNumber' => integer(),
       'xPosition' => float(),
       'yPosition' => float()
     }.

encode(#{ 'pageNumber' := PageNumber,
          'xPosition' := XPosition,
          'yPosition' := YPosition
        }) ->
    #{ 'pageNumber' => PageNumber,
       'xPosition' => XPosition,
       'yPosition' => YPosition
     }.
