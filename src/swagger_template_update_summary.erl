-module(swagger_template_update_summary).

-export([encode/1]).

-export_type([swagger_template_update_summary/0]).

-type swagger_template_update_summary() ::
    #{ 'bulkEnvelopeStatus' => swagger_bulk_envelope_status:swagger_bulk_envelope_status(),
       'envelopeId' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'listCustomFieldUpdateResults' => list(),
       'lockInformation' => swagger_envelope_locks:swagger_envelope_locks(),
       'purgeState' => binary(),
       'recipientUpdateResults' => list(),
       'tabUpdateResults' => swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(),
       'textCustomFieldUpdateResults' => list()
     }.

encode(#{ 'bulkEnvelopeStatus' := BulkEnvelopeStatus,
          'envelopeId' := EnvelopeId,
          'errorDetails' := ErrorDetails,
          'listCustomFieldUpdateResults' := ListCustomFieldUpdateResults,
          'lockInformation' := LockInformation,
          'purgeState' := PurgeState,
          'recipientUpdateResults' := RecipientUpdateResults,
          'tabUpdateResults' := TabUpdateResults,
          'textCustomFieldUpdateResults' := TextCustomFieldUpdateResults
        }) ->
    #{ 'bulkEnvelopeStatus' => BulkEnvelopeStatus,
       'envelopeId' => EnvelopeId,
       'errorDetails' => ErrorDetails,
       'listCustomFieldUpdateResults' => ListCustomFieldUpdateResults,
       'lockInformation' => LockInformation,
       'purgeState' => PurgeState,
       'recipientUpdateResults' => RecipientUpdateResults,
       'tabUpdateResults' => TabUpdateResults,
       'textCustomFieldUpdateResults' => TextCustomFieldUpdateResults
     }.
