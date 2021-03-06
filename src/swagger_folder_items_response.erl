-module(swagger_folder_items_response).

-export([encode/1]).

-export_type([swagger_folder_items_response/0]).

-type swagger_folder_items_response() ::
    #{ 'endPosition' => binary(),
       'envelopes' => list(),
       'folders' => list(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'envelopes' := Envelopes,
          'folders' := Folders,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'envelopes' => Envelopes,
       'folders' => Folders,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
