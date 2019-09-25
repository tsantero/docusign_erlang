-module(swagger_envelope_summary).

-export([encode/1]).

-export_type([swagger_envelope_summary/0]).

-type swagger_envelope_summary() ::
    #{ 'bulkEnvelopeStatus' => swagger_bulk_envelope_status:swagger_bulk_envelope_status(),
       'envelopeId' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'status' => binary(),
       'statusDateTime' => binary(),
       'uri' => binary()
     }.

encode(#{ 'bulkEnvelopeStatus' := BulkEnvelopeStatus,
          'envelopeId' := EnvelopeId,
          'errorDetails' := ErrorDetails,
          'status' := Status,
          'statusDateTime' := StatusDateTime,
          'uri' := Uri
        }) ->
    #{ 'bulkEnvelopeStatus' => BulkEnvelopeStatus,
       'envelopeId' => EnvelopeId,
       'errorDetails' => ErrorDetails,
       'status' => Status,
       'statusDateTime' => StatusDateTime,
       'uri' => Uri
     }.
