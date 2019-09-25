-module(swagger_page_images).

-export([encode/1]).

-export_type([swagger_page_images/0]).

-type swagger_page_images() ::
    #{ 'endPosition' => binary(),
       'nextUri' => binary(),
       'pages' => list(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'pages' := Pages,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'pages' => Pages,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
