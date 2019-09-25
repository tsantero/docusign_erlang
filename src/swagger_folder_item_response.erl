-module(swagger_folder_item_response).

-export([encode/1]).

-export_type([swagger_folder_item_response/0]).

-type swagger_folder_item_response() ::
    #{ 'endPosition' => binary(),
       'folderItems' => list(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalRows' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'folderItems' := FolderItems,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalRows' := TotalRows
        }) ->
    #{ 'endPosition' => EndPosition,
       'folderItems' => FolderItems,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalRows' => TotalRows
     }.
