-module(swagger_envelope_ids_request).

-export([encode/1]).

-export_type([swagger_envelope_ids_request/0]).

-type swagger_envelope_ids_request() ::
    #{ 'envelopeIds' => list(),
       'transactionIds' => list()
     }.

encode(#{ 'envelopeIds' := EnvelopeIds,
          'transactionIds' := TransactionIds
        }) ->
    #{ 'envelopeIds' => EnvelopeIds,
       'transactionIds' => TransactionIds
     }.
