-module(swagger_bulk_envelope).

-export([encode/1]).

-export_type([swagger_bulk_envelope/0]).

-type swagger_bulk_envelope() ::
    #{ 'bulkRecipientRow' => binary(),
       'bulkStatus' => binary(),
       'email' => binary(),
       'envelopeId' => binary(),
       'envelopeUri' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'name' => binary(),
       'submittedDateTime' => binary(),
       'transactionId' => binary()
     }.

encode(#{ 'bulkRecipientRow' := BulkRecipientRow,
          'bulkStatus' := BulkStatus,
          'email' := Email,
          'envelopeId' := EnvelopeId,
          'envelopeUri' := EnvelopeUri,
          'errorDetails' := ErrorDetails,
          'name' := Name,
          'submittedDateTime' := SubmittedDateTime,
          'transactionId' := TransactionId
        }) ->
    #{ 'bulkRecipientRow' => BulkRecipientRow,
       'bulkStatus' => BulkStatus,
       'email' => Email,
       'envelopeId' => EnvelopeId,
       'envelopeUri' => EnvelopeUri,
       'errorDetails' => ErrorDetails,
       'name' => Name,
       'submittedDateTime' => SubmittedDateTime,
       'transactionId' => TransactionId
     }.
