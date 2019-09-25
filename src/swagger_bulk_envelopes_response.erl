-module(swagger_bulk_envelopes_response).

-export([encode/1]).

-export_type([swagger_bulk_envelopes_response/0]).

-type swagger_bulk_envelopes_response() ::
    #{ 'bulkEnvelopeStatuses' => list(),
       'endPosition' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'bulkEnvelopeStatuses' := BulkEnvelopeStatuses,
          'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'bulkEnvelopeStatuses' => BulkEnvelopeStatuses,
       'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
