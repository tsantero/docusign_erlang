-module(swagger_envelopes_information).

-export([encode/1]).

-export_type([swagger_envelopes_information/0]).

-type swagger_envelopes_information() ::
    #{ 'continuationToken' => binary(),
       'endPosition' => binary(),
       'envelopes' => list(),
       'envelopeTransactionStatuses' => list(),
       'folders' => list(),
       'lastQueriedDateTime' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'continuationToken' := ContinuationToken,
          'endPosition' := EndPosition,
          'envelopes' := Envelopes,
          'envelopeTransactionStatuses' := EnvelopeTransactionStatuses,
          'folders' := Folders,
          'lastQueriedDateTime' := LastQueriedDateTime,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'continuationToken' => ContinuationToken,
       'endPosition' => EndPosition,
       'envelopes' => Envelopes,
       'envelopeTransactionStatuses' => EnvelopeTransactionStatuses,
       'folders' => Folders,
       'lastQueriedDateTime' => LastQueriedDateTime,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
