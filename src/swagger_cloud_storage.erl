-module(swagger_cloud_storage).

-export([encode/1]).

-export_type([swagger_cloud_storage/0]).

-type swagger_cloud_storage() ::
    #{ 'endPosition' => binary(),
       'errorDetails' => swagger_external_doc_service_error_details:swagger_external_doc_service_error_details(),
       'id' => binary(),
       'items' => list(),
       'name' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'errorDetails' := ErrorDetails,
          'id' := Id,
          'items' := Items,
          'name' := Name,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'errorDetails' => ErrorDetails,
       'id' => Id,
       'items' => Items,
       'name' => Name,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
