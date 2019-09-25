-module(swagger_recipient_update_response).

-export([encode/1]).

-export_type([swagger_recipient_update_response/0]).

-type swagger_recipient_update_response() ::
    #{ 'combined' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'recipientId' => binary(),
       'recipientIdGuid' => binary(),
       'tabs' => swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs()
     }.

encode(#{ 'combined' := Combined,
          'errorDetails' := ErrorDetails,
          'recipientId' := RecipientId,
          'recipientIdGuid' := RecipientIdGuid,
          'tabs' := Tabs
        }) ->
    #{ 'combined' => Combined,
       'errorDetails' => ErrorDetails,
       'recipientId' => RecipientId,
       'recipientIdGuid' => RecipientIdGuid,
       'tabs' => Tabs
     }.
