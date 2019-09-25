-module(swagger_envelope_bulk_recipients).

-export([encode/1]).

-export_type([swagger_envelope_bulk_recipients/0]).

-type swagger_envelope_bulk_recipients() ::
    #{ 'bulkRecipients' => list(),
       'endPosition' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'bulkRecipients' := BulkRecipients,
          'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'bulkRecipients' => BulkRecipients,
       'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
