-module(swagger_envelope_transaction_status).

-export([encode/1]).

-export_type([swagger_envelope_transaction_status/0]).

-type swagger_envelope_transaction_status() ::
    #{ 'envelopeId' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'status' => binary(),
       'transactionId' => binary()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'errorDetails' := ErrorDetails,
          'status' := Status,
          'transactionId' := TransactionId
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'errorDetails' => ErrorDetails,
       'status' => Status,
       'transactionId' => TransactionId
     }.
