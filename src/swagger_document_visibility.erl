-module(swagger_document_visibility).

-export([encode/1]).

-export_type([swagger_document_visibility/0]).

-type swagger_document_visibility() ::
    #{ 'documentId' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'recipientId' => binary(),
       'rights' => binary(),
       'visible' => binary()
     }.

encode(#{ 'documentId' := DocumentId,
          'errorDetails' := ErrorDetails,
          'recipientId' := RecipientId,
          'rights' := Rights,
          'visible' := Visible
        }) ->
    #{ 'documentId' => DocumentId,
       'errorDetails' => ErrorDetails,
       'recipientId' => RecipientId,
       'rights' => Rights,
       'visible' => Visible
     }.
