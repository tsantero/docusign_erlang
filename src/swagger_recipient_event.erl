-module(swagger_recipient_event).

-export([encode/1]).

-export_type([swagger_recipient_event/0]).

-type swagger_recipient_event() ::
    #{ 'includeDocuments' => binary(),
       'recipientEventStatusCode' => binary()
     }.

encode(#{ 'includeDocuments' := IncludeDocuments,
          'recipientEventStatusCode' := RecipientEventStatusCode
        }) ->
    #{ 'includeDocuments' => IncludeDocuments,
       'recipientEventStatusCode' => RecipientEventStatusCode
     }.
