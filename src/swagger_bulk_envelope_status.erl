-module(swagger_bulk_envelope_status).

-export([encode/1]).

-export_type([swagger_bulk_envelope_status/0]).

-type swagger_bulk_envelope_status() ::
    #{ 'batchId' => binary(),
       'batchSize' => binary(),
       'bulkEnvelopes' => list(),
       'bulkEnvelopesBatchUri' => binary(),
       'endPosition' => binary(),
       'failed' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'queued' => binary(),
       'resultSetSize' => binary(),
       'sent' => binary(),
       'startPosition' => binary(),
       'submittedDate' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'batchId' := BatchId,
          'batchSize' := BatchSize,
          'bulkEnvelopes' := BulkEnvelopes,
          'bulkEnvelopesBatchUri' := BulkEnvelopesBatchUri,
          'endPosition' := EndPosition,
          'failed' := Failed,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'queued' := Queued,
          'resultSetSize' := ResultSetSize,
          'sent' := Sent,
          'startPosition' := StartPosition,
          'submittedDate' := SubmittedDate,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'batchId' => BatchId,
       'batchSize' => BatchSize,
       'bulkEnvelopes' => BulkEnvelopes,
       'bulkEnvelopesBatchUri' => BulkEnvelopesBatchUri,
       'endPosition' => EndPosition,
       'failed' => Failed,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'queued' => Queued,
       'resultSetSize' => ResultSetSize,
       'sent' => Sent,
       'startPosition' => StartPosition,
       'submittedDate' => SubmittedDate,
       'totalSetSize' => TotalSetSize
     }.
